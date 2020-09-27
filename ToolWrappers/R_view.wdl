version 1.0

task Rview {
  input {
    Boolean? _be_verbose
    Int? maxd
    Int? min_l
    Boolean? min
    Boolean? cb
    Boolean? inter
    File? send_output_file
    Int? seed
    String peptides
  }
  command <<<
    R_view \
      ~{peptides} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if defined(maxd) then ("--maxD " +  '"' + maxd + '"') else ""} \
      ~{if defined(min_l) then ("--minL " +  '"' + min_l + '"') else ""} \
      ~{if (min) then "--MIN" else ""} \
      ~{if (cb) then "--CB" else ""} \
      ~{if (inter) then "--inter" else ""} \
      ~{if defined(send_output_file) then ("-o " +  '"' + send_output_file + '"') else ""} \
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
    seed: ": set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)"
    peptides: ""
  }
  output {
    File out_stdout = stdout()
    File out_send_output_file = "${in_send_output_file}"
  }
}