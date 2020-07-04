version 1.0

task Msaprobs {
  input {
    String? outfile
    Int? num_threads
    Boolean? clustalw
    String? consistency
    String? iterative_refinement
    Boolean? verbose
    File? an_not
    Boolean? alignment_order
    Boolean? version
    String? option
  }
  command <<<
    msaprobs \
      ~{option} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(num_threads) then ("-num_threads " +  '"' + num_threads + '"') else ""} \
      ~{true="-clustalw" false="" clustalw} \
      ~{if defined(consistency) then ("--consistency " +  '"' + consistency + '"') else ""} \
      ~{if defined(iterative_refinement) then ("--iterative-refinement " +  '"' + iterative_refinement + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(an_not) then ("-annot " +  '"' + an_not + '"') else ""} \
      ~{true="--alignment-order" false="" alignment_order} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    outfile: "specify the output file name (STDOUT by default)"
    num_threads: "specify the number of threads used, and otherwise detect automatically"
    clustalw: "use CLUSTALW output format instead of FASTA format"
    consistency: "use 0 <= REPS <= 5 (default: 2) passes of consistency transformation"
    iterative_refinement: "use 0 <= REPS <= 1000 (default: 10) passes of iterative-refinement"
    verbose: "report progress while aligning (default: off)"
    an_not: "write annotation for multiple alignment to FILENAME"
    alignment_order: "print sequences in alignment order rather than input order (default: off)"
    version: "print out version of MSAPROBS "
    option: ""
  }
}