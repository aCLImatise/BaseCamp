version 1.0

task Gfinisher {
  input {
    Boolean? contigsscaffolds_input_file
    Boolean? ds
    Directory? output_directory
    Boolean? verbose_mode
    Boolean? ref
  }
  command <<<
    gfinisher \
      ~{if (contigsscaffolds_input_file) then "-i" else ""} \
      ~{if (ds) then "-ds" else ""} \
      ~{if (output_directory) then "-o" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if (ref) then "-ref" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contigsscaffolds_input_file: "contigs/scaffolds input file"
    ds: "dataset files names (one or more separated by comma)"
    output_directory: "output directory"
    verbose_mode: "verbose mode"
    ref: "genome sequence reference in fasta format"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}