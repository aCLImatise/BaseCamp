version 1.0

task GffutilsCliSearchText {
  input {
    String? feature_type
    String gff_utils_cli
    String search
    String db
    String text
  }
  command <<<
    gffutils-cli search text \
      ~{gff_utils_cli} \
      ~{search} \
      ~{db} \
      ~{text} \
      ~{if defined(feature_type) then ("--featuretype " +  '"' + feature_type + '"') else ""}
  >>>
  parameter_meta {
    feature_type: ""
    gff_utils_cli: ""
    search: ""
    db: ""
    text: ""
  }
}