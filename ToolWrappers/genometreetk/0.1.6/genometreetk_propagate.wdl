version 1.0

task GenometreetkPropagate {
  input {
    Boolean? silent
    String input_taxonomy
    String metadata_file
    String output_taxonomy
  }
  command <<<
    genometreetk propagate \
      ~{input_taxonomy} \
      ~{metadata_file} \
      ~{output_taxonomy} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    silent: "suppress output"
    input_taxonomy: "input taxonomy file"
    metadata_file: "metadata file for all genomes in the GTDB"
    output_taxonomy: "output taxonomy file"
  }
  output {
    File out_stdout = stdout()
  }
}