version 1.0

task Bpcomp {
  input {
    Int? only_partitions_max
    File? detailed_output_file
    Boolean? ps
    Int? default_build_consensus
  }
  command <<<
    bpcomp \
      ~{if defined(only_partitions_max) then ("-c " +  '"' + only_partitions_max + '"') else ""} \
      ~{if defined(detailed_output_file) then ("-o " +  '"' + detailed_output_file + '"') else ""} \
      ~{if (ps) then "-ps" else ""} \
      ~{if defined(default_build_consensus) then ("-x " +  '"' + default_build_consensus + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0"
  }
  parameter_meta {
    only_partitions_max: ": only partitions with max prob >  cutoff. (default 0.5)"
    detailed_output_file: ": detailed output into file"
    ps: ": postscript output (requires LateX)"
    default_build_consensus: "[<every> <until>]. default burnin = 1/10 of the chain\\ncompare bipartition frequencies between independent chains\\nand build consensus based on merged lists of trees\\n"
  }
  output {
    File out_stdout = stdout()
    File out_detailed_output_file = "${in_detailed_output_file}"
  }
}