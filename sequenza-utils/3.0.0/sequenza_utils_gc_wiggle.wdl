version 1.0

task SequenzaUtilsGcWiggle {
  input {
    String? fast_a
    String? output_file_stdout
    String? window_size_calculate
  }
  command <<<
    sequenza-utils gc_wiggle \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(output_file_stdout) then ("-o " +  '"' + output_file_stdout + '"') else ""} \
      ~{if defined(window_size_calculate) then ("-w " +  '"' + window_size_calculate + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "the fasta file. It can be a file name or \"-\" to use STDIN"
    output_file_stdout: "Output file \"-\" for STDOUT"
    window_size_calculate: "The window size to calculate the GC-content percentage"
  }
}