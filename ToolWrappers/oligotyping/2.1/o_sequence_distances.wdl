version 1.0

task Osequencedistances {
  input {
    File? output_file
    Boolean? align
    String fast_a
  }
  command <<<
    o_sequence_distances \
      ~{fast_a} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if (align) then "--align" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "Output file to store results"
    align: "If sequences require pairwise alignment"
    fast_a: "FASTA file that contains -representative?- sequences"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}