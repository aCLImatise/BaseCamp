version 1.0

task SequenzautilsGcWiggle {
  input {
    File? fast_a
    File? output_file_stdout
    Int? window_size_calculate
  }
  command <<<
    sequenza_utils gc_wiggle \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(output_file_stdout) then ("-o " +  '"' + output_file_stdout + '"') else ""} \
      ~{if defined(window_size_calculate) then ("-w " +  '"' + window_size_calculate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "the fasta file. It can be a file name or \\\"-\\\" to use\\nSTDIN"
    output_file_stdout: "Output file \\\"-\\\" for STDOUT"
    window_size_calculate: "The window size to calculate the GC-content percentage"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
  }
}