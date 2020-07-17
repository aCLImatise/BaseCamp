version 1.0

task RView {
  input {
    Boolean? _be_verbose
    String? maxd
    String? min_l
    Boolean? min
    Boolean? cb
    Boolean? inter
    String? send_output_file
    String? to_l
    String? seed
    String peptides
  }
  command <<<
    R-view \
      ~{peptides} \
      ~{true="-v" false="" _be_verbose} \
      ~{if defined(maxd) then ("--maxD " +  '"' + maxd + '"') else ""} \
      ~{if defined(min_l) then ("--minL " +  '"' + min_l + '"') else ""} \
      ~{true="--MIN" false="" min} \
      ~{true="--CB" false="" cb} \
      ~{true="--inter" false="" inter} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    _be_verbose: ": be verbose"
    maxd: ": max distance for contact definition  [8.0]  (x>0)"
    min_l: ": min (j-i+1) for contact definition  [1]  (n>0)"
    min: ": Minimum distance btw any two atoms (except water)  [TRUE]"
    cb: ": Distance btw beta Carbors (alphaC for Gly)"
    inter: ": TRUE to calculate inter-chain contacts"
    send_output_file: ": send output to file <f>, not stdout"
    to_l: ": tolerance  [1e-6]"
    seed: ": set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)"
    peptides: ""
  }
}