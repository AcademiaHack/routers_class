Rails.application.routes.draw do
  # get 'patients/:id', to: 'patients#show'
=begin
  resources :patients do
    resources :records, only: [:index, :new, :create] do
      member do
        get :print
        get 'otra_cosa'
      end

      collection do
        get :search
      end
    end
  end
=end
#  resources :records, only: [:show, :edit, :update, :destroy]
############################
  resources :patients do
    member do
      get :dismiss
    end
    collection do
    end
    resources :records, shallow: true do
      member do
        get :print
      end
      collection do
        get :search 
      end
    end
  end

  resources :photos, controller: 'images'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# GET /patients/17/records/1/print
# GET /patients/17/records/search


# POST
# PUT/PATCH
# DELETE /patients/17

# EJEMPLO

#link_to "Show", patient_path(@patient)


# <a href="/patients/1/">Show</a>

=begin
class Patient
  has_many :records
end

class Record
  belongs_to :patient
end
=end