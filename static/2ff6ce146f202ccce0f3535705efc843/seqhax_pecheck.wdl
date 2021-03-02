version 1.0

task SeqhaxPecheck {
  input {
    File? output_interleaved_reads
    Boolean? interleaved_inputs
    Boolean? print_tabular_summary
    Int? number_parallel_threads
    Int r_one_fq
    Int r_two_fq
  }
  command <<<
    seqhax pecheck \
      ~{r_one_fq} \
      ~{r_two_fq} \
      ~{if defined(output_interleaved_reads) then ("-o " +  '"' + output_interleaved_reads + '"') else ""} \
      ~{if (interleaved_inputs) then "-i" else ""} \
      ~{if (print_tabular_summary) then "-q" else ""} \
      ~{if defined(number_parallel_threads) then ("-t " +  '"' + number_parallel_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_interleaved_reads: "Output interleaved reads to FILE. Use - for stdout.\\nAll sets of paired end files will end up in same\\noutput!!! (default: no output)"
    interleaved_inputs: "Interleaved inputs"
    print_tabular_summary: "Don't print tabular summary"
    number_parallel_threads: "Number of parallel threads (default: no output)"
    r_one_fq: ""
    r_two_fq: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_interleaved_reads = "${in_output_interleaved_reads}"
  }
}