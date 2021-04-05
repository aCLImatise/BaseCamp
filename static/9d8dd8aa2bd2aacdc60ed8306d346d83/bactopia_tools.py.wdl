version 1.0

task Bactopiatoolspy {
  input {
    Directory? bac_topia
    Boolean? force_rebuild
    Boolean? skip_cond_a
    Boolean? verbose
    Boolean? silent
    String var_5
    String var_6
    String var_7
    String var_8
    String var_9
    String var_10
    String var_11
    String var_12
    String var_13
    String var_14
    String var_15
    String var_16
    String var_17
    String var_18
    String var_19
    String var_20
    String var_21
    String var_22
    String var_23
    String var_24
  }
  command <<<
    bactopia_tools_py \
      ~{var_5} \
      ~{var_6} \
      ~{var_7} \
      ~{var_8} \
      ~{var_9} \
      ~{var_10} \
      ~{var_11} \
      ~{var_12} \
      ~{var_13} \
      ~{var_14} \
      ~{var_15} \
      ~{var_16} \
      ~{var_17} \
      ~{var_18} \
      ~{var_19} \
      ~{var_20} \
      ~{var_21} \
      ~{var_22} \
      ~{var_23} \
      ~{var_24} \
      ~{if defined(bac_topia) then ("--bactopia " +  '"' + bac_topia + '"') else ""} \
      ~{if (force_rebuild) then "--force_rebuild" else ""} \
      ~{if (skip_cond_a) then "--skip_conda" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.4--0"
  }
  parameter_meta {
    bac_topia: "Directory where Bactopia repository is stored."
    force_rebuild: "Force overwrite of existing Conda environments."
    skip_cond_a: "Skip all things conda related."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    var_5: "Functional annotation using orthologous groups"
    var_6: "Pairwise average nucleotide identity"
    var_7: "Identify marker genes and assign taxonomic classifications"
    var_8: "in silico typing of the H. influenzae cap locus"
    var_9: "Identify positions of insertion sites"
    var_10: "Trees based on Mash distances"
    var_11: "16s assembly, alignment and tree"
    var_12: "Pan-genome with optional core-genome tree"
    var_13: "Pan-genome with optional core-genome tree"
    var_14: "A report summarizing Bactopia project"
    var_15: "Functional annotation using orthologous groups"
    var_16: "Pairwise average nucleotide identity"
    var_17: "Identify marker genes and assign taxonomic classifications"
    var_18: "in silico typing of the H. influenzae cap locus"
    var_19: "Identify positions of insertion sites"
    var_20: "Trees based on Mash distances"
    var_21: "16s assembly, alignment and tree"
    var_22: "Pan-genome with optional core-genome tree"
    var_23: "Pan-genome with optional core-genome tree"
    var_24: "A report summarizing Bactopia project"
  }
  output {
    File out_stdout = stdout()
  }
}