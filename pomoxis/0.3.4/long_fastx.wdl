version 1.0

task LongFastx {
  input {
    String? longest
    Int? bases
    File? others
    String input_fastq_file
    String output_fastq_file
  }
  command <<<
    long_fastx \
      ~{input_fastq_file} \
      ~{output_fastq_file} \
      ~{if defined(longest) then ("--longest " +  '"' + longest + '"') else ""} \
      ~{if defined(bases) then ("--bases " +  '"' + bases + '"') else ""} \
      ~{if defined(others) then ("--others " +  '"' + others + '"') else ""}
  >>>
  parameter_meta {
    longest: "Percentage of longest reads to partition."
    bases: "Maximum number of bases (subject to at least one read.)"
    others: "Write all other reads to file."
    input_fastq_file: "Input .fastq file."
    output_fastq_file: "Output .fastq file."
  }
  output {
    File out_stdout = stdout()
  }
}