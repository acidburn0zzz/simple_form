require 'simple_form/action_view_extensions/form_helper'
require 'simple_form/action_view_extensions/builder'

module SimpleForm
  autoload :Components,      'simple_form/components'
  autoload :FormBuilder,     'simple_form/form_builder'
  autoload :I18nCache,       'simple_form/i18n_cache'
  autoload :MapType,         'simple_form/map_type'
  autoload :RequiredHelpers, 'simple_form/required_helpers'

  # Default tag used in componenents.
  mattr_accessor :component_tag
  @@component_tag = :span

  # Components used by the form builder.
  mattr_accessor :components
  @@components = [
    SimpleForm::Components::Wrapper, SimpleForm::Components::Label,
    SimpleForm::Components::Input, SimpleForm::Components::Hint,
    SimpleForm::Components::Error
  ]

  # The terminator sent to the last component
  mattr_accessor :terminator
  @@terminator = lambda { "" }

  # Series of attemps to detect a default label method for collection
  mattr_accessor :collection_label_methods
  @@collection_label_methods = [ :name, :title, :to_s ]

  # Series of attemps to detect a default value method for collection
  mattr_accessor :collection_value_methods
  @@collection_value_methods = [ :id, :to_s ]

  # You can wrap all inputs in a pre-defined tag. By default is nil.
  mattr_accessor :wrapper_tag
  @@wrapper_tag = nil
end