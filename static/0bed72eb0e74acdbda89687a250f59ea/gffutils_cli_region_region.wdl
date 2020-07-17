version 1.0

task GffutilsCliRegionRegion {
  input {
    String gff_utils_cli
    String var_1
    String db
    String var_3
  }
  command <<<
    gffutils-cli region region \
      ~{gff_utils_cli} \
      ~{var_1} \
      ~{db} \
      ~{var_3}
  >>>
  parameter_meta {
    gff_utils_cli: ""
    var_1: ""
    db: ""
    var_3: ""
  }
}