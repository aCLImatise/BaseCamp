version 1.0

task Rsemevalrunem {
  input {
    Boolean? number_threads_wants
    File? produce_file_default
    Boolean? set_it_quiet
    Boolean? sampling
    Int? seed
  }
  command <<<
    rsem_eval_run_em \
      ~{if (number_threads_wants) then "-p" else ""} \
      ~{if (produce_file_default) then "-b" else ""} \
      ~{if (set_it_quiet) then "-q" else ""} \
      ~{if (sampling) then "--sampling" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_threads_wants: ": number of threads which user wants to use. (default: 1)"
    produce_file_default: ": produce bam format output file. (default: off)"
    set_it_quiet: ": set it quiet"
    sampling: ": sample each read from its posterior distribution when bam file is generated. (default: off)"
    seed: ": the seed used for the BAM sampling. (default: off)"
  }
  output {
    File out_stdout = stdout()
    File out_produce_file_default = "${in_produce_file_default}"
  }
}