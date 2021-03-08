version 1.0

task ParseSdrfSplitsdrf {
  input {
    File? sd_rf_file
    String? attribute
    File? prefix
  }
  command <<<
    parse_sdrf split_sdrf \
      ~{if defined(sd_rf_file) then ("--sdrf_file " +  '"' + sd_rf_file + '"') else ""} \
      ~{if defined(attribute) then ("--attribute " +  '"' + attribute + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sdrf-pipelines:0.0.14--py_0"
  }
  parameter_meta {
    sd_rf_file: "SDRF file to be splited  [required]"
    attribute: "property to split, Multiple attributes are separated\\nby commas  [required]"
    prefix: "file prefix to be added to the sdrf file name"
  }
  output {
    File out_stdout = stdout()
  }
}