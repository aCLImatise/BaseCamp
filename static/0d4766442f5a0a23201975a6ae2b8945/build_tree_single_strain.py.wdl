version 1.0

task BuildTreeSingleStrainpy {
  input {
    Array[String] ifn_alignments
    File? log_of_n
    Int? nprocs
    Int? bootstrap_ra_xml
    Boolean? verbose
  }
  command <<<
    build_tree_single_strain_py \
      ~{if defined(ifn_alignments) then ("--ifn_alignments " +  '"' + ifn_alignments + '"') else ""} \
      ~{if defined(log_of_n) then ("--log_ofn " +  '"' + log_of_n + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""} \
      ~{if defined(bootstrap_ra_xml) then ("--bootstrap_raxml " +  '"' + bootstrap_ra_xml + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ifn_alignments: "The alignment file."
    log_of_n: "The log file."
    nprocs: "Number of processors."
    bootstrap_ra_xml: "The number of runs for bootstraping when building the\\ntree. Default 0."
    verbose: "Show all information. Default \\\"not set\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}