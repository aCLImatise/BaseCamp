version 1.0

task RScapeSimNobps {
  input {
    Boolean? _be_verbose
    String? number_sequences_simulated
    Boolean? noss
    String? in_format
    String? outdir
    String? send_output_file
    Boolean? one_msa
    String? to_l
    String? seed
    Boolean? options
    String msa
  }
  command <<<
    R-scape-sim-nobps \
      ~{msa} \
      ~{true="-v" false="" _be_verbose} \
      ~{if defined(number_sequences_simulated) then ("-N " +  '"' + number_sequences_simulated + '"') else ""} \
      ~{true="--noss" false="" noss} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{true="--onemsa" false="" one_msa} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    _be_verbose: ": be verbose"
    number_sequences_simulated: ": number of sequences in the simulated msa, N=0 for use all  [0]"
    noss: ": assume unstructured, even if msa has a given ss_cons"
    in_format: ": specify format"
    outdir: ": specify a directory for all output files"
    send_output_file: ": send output to file <f>, not stdout"
    one_msa: ": if file has more than one msa, analyze only the first one"
    to_l: ": tolerance  [1e-3]"
    seed: ": set RNG seed to <n>  [0]"
    options: ""
    msa: ""
  }
}