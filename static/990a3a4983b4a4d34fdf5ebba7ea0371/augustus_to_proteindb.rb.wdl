version 1.0

task AugustusToProteindbrb {
  input {
    File? explicitly_named_output
    Boolean? info
    Int augustus_dot_gff_three
  }
  command <<<
    augustus_to_proteindb_rb \
      ~{augustus_dot_gff_three} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file. \\"
    info: "Include CDS Coordinates [false]"
    augustus_dot_gff_three: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}