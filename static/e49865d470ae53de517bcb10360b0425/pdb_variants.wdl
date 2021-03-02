version 1.0

task PdbVariants {
  input {
    File? config
    File? output_mutations_list_txt
  }
  command <<<
    pdb_variants \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_mutations_list_txt) then ("--output_mutations_list_txt " +  '"' + output_mutations_list_txt + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_io:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_mutations_list_txt: "Path to the TXT file containing an ASCII comma separated values of the mutations. Accepted formats: txt.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}