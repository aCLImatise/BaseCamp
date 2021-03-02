version 1.0

task Rscapesimnobps {
  input {
    Boolean? _be_verbose
    Int? number_sequences_simulated
    Boolean? noss
    String? in_format
    Directory? outdir
    File? send_output_file
    Boolean? one_msa
    Int? seed
    Boolean? options
    String msa
  }
  command <<<
    R_scape_sim_nobps \
      ~{msa} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if defined(number_sequences_simulated) then ("-N " +  '"' + number_sequences_simulated + '"') else ""} \
      ~{if (noss) then "--noss" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{if (one_msa) then "--onemsa" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _be_verbose: ": be verbose"
    number_sequences_simulated: ": number of sequences in the simulated msa, N=0 for use all  [0]"
    noss: ": assume unstructured, even if msa has a given ss_cons"
    in_format: ": specify format"
    outdir: ": specify a directory for all output files"
    send_output_file: ": send output to file <f>, not stdout"
    one_msa: ": if file has more than one msa, analyze only the first one"
    seed: ": set RNG seed to <n>  [0]"
    options: ""
    msa: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_send_output_file = "${in_send_output_file}"
  }
}