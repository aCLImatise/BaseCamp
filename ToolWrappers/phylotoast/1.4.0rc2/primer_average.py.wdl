version 1.0

task PrimerAveragepy {
  input {
    Int? p_one
    Int? p_two
    File? output_fp
    Boolean? verbose
  }
  command <<<
    primer_average_py \
      ~{if defined(p_one) then ("--p1 " +  '"' + p_one + '"') else ""} \
      ~{if defined(p_two) then ("--p2 " +  '"' + p_two + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    p_one: "Primer-set 1 seqs_otus results files."
    p_two: "Primer-set 2 seqs_otus results files."
    output_fp: "The combined seqs_otus file that has been averaged by\\nshared OTU entries. Default: combined_seqs_otus.txt"
    verbose: "Print detailed information about script operation."
  }
  output {
    File out_stdout = stdout()
  }
}