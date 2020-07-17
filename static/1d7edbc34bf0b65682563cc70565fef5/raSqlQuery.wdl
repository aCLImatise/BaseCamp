version 1.0

task RaSqlQuery {
  input {
    String? no_inherit_field
    Boolean? merge
    String? restrict
    String? db
  }
  command <<<
    raSqlQuery \
      ~{if defined(no_inherit_field) then ("-noInheritField " +  '"' + no_inherit_field + '"') else ""} \
      ~{true="-merge" false="" merge} \
      ~{if defined(restrict) then ("-restrict " +  '"' + restrict + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""}
  >>>
  parameter_meta {
    no_inherit_field: "- If field is present don't inherit fields from parent"
    merge: "- If there are multiple raFiles, records with the same keyField will be merged together with fields in later files overriding fields in earlier files"
    restrict: "- restrict output to only ones with keys in file."
    db: "- Acts on trackDb files for the given database.  Sets up list of files appropriately and sets parent, merge, and override all. Use db=all for all databases"
  }
}