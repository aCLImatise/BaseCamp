version 1.0

task LongFastx {
  input {
    String? longest
    Int? bases
    File? others
    String input_fastaq_file
    String output_fasta_file
  }
  command <<<
    long_fastx \
      ~{input_fastaq_file} \
      ~{output_fasta_file} \
      ~{if defined(longest) then ("--longest " +  '"' + longest + '"') else ""} \
      ~{if defined(bases) then ("--bases " +  '"' + bases + '"') else ""} \
      ~{if defined(others) then ("--others " +  '"' + others + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    longest: "Percentage of longest reads to partition."
    bases: "Maximum number of bases (subject to at least one read.)"
    others: "Write all other reads to file."
    input_fastaq_file: "Input .fasta/q file."
    output_fasta_file: "Output .fasta file."
  }
  output {
    File out_stdout = stdout()
  }
}