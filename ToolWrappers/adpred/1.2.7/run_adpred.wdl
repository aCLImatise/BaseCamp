version 1.0

task Runadpred {
  input {
    Boolean? saturated_mutagenesis
    Boolean? output_prefix
  }
  command <<<
    run_adpred \
      ~{if (saturated_mutagenesis) then "--saturated-mutagenesis" else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    saturated_mutagenesis: "(list of start positions separated by comma. Ends are starts+30)"
    output_prefix: "(if empty will use protein.id. if prot_id not provided it will be empty)"
  }
  output {
    File out_stdout = stdout()
  }
}