OperatorRecordable.config = {
  operator_class_name: "Operator",
  creator_column_name: "created_by",
  updater_column_name: "updated_by",
  deleter_column_name: "deleted_by",
  operator_association_options: { optional: true },
  operator_association_scope: -> { with_deleted },
  store: :current_attributes_store
}
