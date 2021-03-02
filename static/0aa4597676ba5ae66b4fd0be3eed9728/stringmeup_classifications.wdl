version 1.0

task StringmeupClassifications {
  input {
    Boolean? gz_output
    Int? minimum_hit_groups
    Boolean? keep_unclassified
    File? output_verbose
    File? output_classifications
    File? output_report
    File? nodes
    File? names
    String string_me_up
    String confidence
    String classifications
  }
  command <<<
    stringmeup classifications \
      ~{string_me_up} \
      ~{confidence} \
      ~{classifications} \
      ~{if (gz_output) then "--gz_output" else ""} \
      ~{if defined(minimum_hit_groups) then ("--minimum_hit_groups " +  '"' + minimum_hit_groups + '"') else ""} \
      ~{if (keep_unclassified) then "--keep_unclassified" else ""} \
      ~{if defined(output_verbose) then ("--output_verbose " +  '"' + output_verbose + '"') else ""} \
      ~{if defined(output_classifications) then ("--output_classifications " +  '"' + output_classifications + '"') else ""} \
      ~{if defined(output_report) then ("--output_report " +  '"' + output_report + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stringmeup:0.1.4--py_0"
  }
  parameter_meta {
    gz_output: ""
    minimum_hit_groups: ""
    keep_unclassified: ""
    output_verbose: ""
    output_classifications: ""
    output_report: ""
    nodes: ""
    names: ""
    string_me_up: ""
    confidence: ""
    classifications: ""
  }
  output {
    File out_stdout = stdout()
  }
}