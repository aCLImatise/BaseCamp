version 1.0

task RaSqlQuery {
  input {
    Boolean? add_file
    Boolean? add_db
    Boolean? strict
    String? key
    Boolean? parent
    String? parent_field
    Boolean? override_needed
    String? no_inherit_field
    Boolean? merge
    File? restrict
    Int? db
  }
  command <<<
    raSqlQuery \
      ~{if (add_file) then "-addFile" else ""} \
      ~{if (add_db) then "-addDb" else ""} \
      ~{if (strict) then "-strict" else ""} \
      ~{if defined(key) then ("-key " +  '"' + key + '"') else ""} \
      ~{if (parent) then "-parent" else ""} \
      ~{if defined(parent_field) then ("-parentField " +  '"' + parent_field + '"') else ""} \
      ~{if (override_needed) then "-overrideNeeded" else ""} \
      ~{if defined(no_inherit_field) then ("-noInheritField " +  '"' + no_inherit_field + '"') else ""} \
      ~{if (merge) then "-merge" else ""} \
      ~{if defined(restrict) then ("-restrict " +  '"' + restrict + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_file: "- Add 'file' field to say where record is defined"
    add_db: "- Add 'db' field to say where record is defined"
    strict: "- Used only with db option.  Only report tracks that exist in db"
    key: "- Use the as the key field for merges and parenting. Default name"
    parent: "- Merge together inheriting on parentField"
    parent_field: "- Use field as the one that tells us who is our parent. Default subTrack"
    override_needed: "- If set records are only overridden field-by-field by later records\\nif 'override' follows the track name. Otherwiser later record replaces\\nearlier record completely.  If not set all records overridden field by field"
    no_inherit_field: "- If field is present don't inherit fields from parent"
    merge: "- If there are multiple raFiles, records with the same keyField will be\\nmerged together with fields in later files overriding fields in earlier files"
    restrict: "- restrict output to only ones with keys in file."
    db: "- Acts on trackDb files for the given database.  Sets up list of files\\nappropriately and sets parent, merge, and override all.\\nUse db=all for all databases\\n"
  }
  output {
    File out_stdout = stdout()
    File out_restrict = "${in_restrict}"
  }
}