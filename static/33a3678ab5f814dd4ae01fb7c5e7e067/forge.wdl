version 1.0

task Forge {
  input {
    Boolean? verbose
    Float? pseudo_count
    Float? pseudo_coding
    Float? pseudo_intron
    Float? pseudo_inter
    Boolean? min_counts
    Boolean? lc_mask
    Int? utr_five_length
    Int? utr_five_offset
    Int? utr_three_length
    Int? utr_three_offset
    Int? explicit
    Int? min_intron
    File? boost
    String ann
    String dna
  }
  command <<<
    forge \
      ~{ann} \
      ~{dna} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(pseudo_count) then ("-pseudocount " +  '"' + pseudo_count + '"') else ""} \
      ~{if defined(pseudo_coding) then ("-pseudoCoding " +  '"' + pseudo_coding + '"') else ""} \
      ~{if defined(pseudo_intron) then ("-pseudoIntron " +  '"' + pseudo_intron + '"') else ""} \
      ~{if defined(pseudo_inter) then ("-pseudoInter " +  '"' + pseudo_inter + '"') else ""} \
      ~{if (min_counts) then "-min-counts" else ""} \
      ~{if (lc_mask) then "-lcmask" else ""} \
      ~{if defined(utr_five_length) then ("-utr5-length " +  '"' + utr_five_length + '"') else ""} \
      ~{if defined(utr_five_offset) then ("-utr5-offset " +  '"' + utr_five_offset + '"') else ""} \
      ~{if defined(utr_three_length) then ("-utr3-length " +  '"' + utr_three_length + '"') else ""} \
      ~{if defined(utr_three_offset) then ("-utr3-offset " +  '"' + utr_three_offset + '"') else ""} \
      ~{if defined(explicit) then ("-explicit " +  '"' + explicit + '"') else ""} \
      ~{if defined(min_intron) then ("-min-intron " +  '"' + min_intron + '"') else ""} \
      ~{if defined(boost) then ("-boost " +  '"' + boost + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    pseudo_count: "[1]   (absolute number for all models)"
    pseudo_coding: "[0.0] (eg. 0.05)"
    pseudo_intron: "[0.0]"
    pseudo_inter: "[0.0]"
    min_counts: "[0]"
    lc_mask: "[-fragmentN]"
    utr_five_length: "[50]"
    utr_five_offset: "[10]"
    utr_three_length: "[50]"
    utr_three_offset: "[10]"
    explicit: "[250]"
    min_intron: "[30]"
    boost: "(file of ID <int>)"
    ann: ""
    dna: ""
  }
  output {
    File out_stdout = stdout()
  }
}