version 1.0

task Tracecomp {
  input {
    File? detailed_output_file
    Int? default_effective_sizes
  }
  command <<<
    tracecomp \
      ~{if defined(detailed_output_file) then ("-o " +  '"' + detailed_output_file + '"') else ""} \
      ~{if defined(default_effective_sizes) then ("-x " +  '"' + default_effective_sizes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0"
  }
  parameter_meta {
    detailed_output_file: ": detailed output into file"
    default_effective_sizes: "[<every> <until>]. default burnin = 20% of the chain\\nmeasure the effective sizes and overlap between 95% CI of several independent chains\\n"
  }
  output {
    File out_stdout = stdout()
    File out_detailed_output_file = "${in_detailed_output_file}"
  }
}