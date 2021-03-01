version 1.0

task GetDifferentialPeaksReplicatespl {
  input {
    Int? b
    Int? i
    Boolean? fold_enrichment_default
    Boolean? fdr_bg_default
    Boolean? fdr
    String? genome
    Boolean? de_seq_two
    Boolean? balanced
    Boolean? frag_length
    Boolean? all
    String? style
    String? use
    File? use_specific_file
    Int? t
    String? ip
    Int? tag_dir_two
  }
  command <<<
    getDifferentialPeaksReplicates_pl \
      ~{ip} \
      ~{tag_dir_two} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if (fold_enrichment_default) then "-f" else ""} \
      ~{if (fdr_bg_default) then "-q" else ""} \
      ~{if (fdr) then "-fdr" else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if (de_seq_two) then "-DESeq2" else ""} \
      ~{if (balanced) then "-balanced" else ""} \
      ~{if (frag_length) then "-fragLength" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if defined(style) then ("-style " +  '"' + style + '"') else ""} \
      ~{if defined(use) then ("-use " +  '"' + use + '"') else ""} \
      ~{if defined(use_specific_file) then ("-p " +  '"' + use_specific_file + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    b: "[background tagdir2] ..."
    i: "[Input tagdir2] ..."
    fold_enrichment_default: "<#> (fold enrichment over bg, default: 2)"
    fdr_bg_default: "<#> (FDR over bg, default: 0.05)"
    fdr: "<#>, -F <#>, -L <#> (parameters for findPeaks)"
    genome: "(genome version to use for annotation)"
    de_seq_two: "(differential stats algorithm, default: DESeq2)"
    balanced: "(normalize signal across peaks, default: normalize to read totals)"
    frag_length: "<#> (standardize estimated fragment length across analysis)"
    all: "(report all peaks, not just differentially regulated)"
    style: "(findPeaks style to use for finding peaks)"
    use: "(use existing peaks in tag directories)"
    use_specific_file: "(use specific peak file instead of tagDir/peaks.txt or finding new one)"
    t: ""
    ip: ""
    tag_dir_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}