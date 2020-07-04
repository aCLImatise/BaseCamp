version 1.0

task GetDiffExpression.pl {
  input {
    Boolean? rna
    Boolean? repeats
    Boolean? peaks
    String? loop
    Boolean? pc_one
    Boolean? basic
    Boolean? dispersion
    Boolean? norm_two_total
    Boolean? avs_a
    Boolean? show_r
    Boolean? de_seq_two
    Boolean? de_seq
    Boolean? edger
    Boolean? limma
    String? export
    Boolean? fdr
    Boolean? p_value
    Boolean? log_twofold
    Boolean? r_log
    Boolean? vst
    Boolean? simple_norm
    Boolean? raw
    String data_file
    String group_code_dot_dot_dot
  }
  command <<<
    getDiffExpression.pl \
      ~{data_file} \
      ~{group_code_dot_dot_dot} \
      ~{true="-rna" false="" rna} \
      ~{true="-repeats" false="" repeats} \
      ~{true="-peaks" false="" peaks} \
      ~{if defined(loop) then ("-loop " +  '"' + loop + '"') else ""} \
      ~{true="-pc1" false="" pc_one} \
      ~{true="-basic" false="" basic} \
      ~{true="-dispersion" false="" dispersion} \
      ~{true="-norm2total" false="" norm_two_total} \
      ~{true="-AvsA" false="" avs_a} \
      ~{true="-showR" false="" show_r} \
      ~{true="-DESeq2" false="" de_seq_two} \
      ~{true="-DESeq" false="" de_seq} \
      ~{true="-edgeR" false="" edger} \
      ~{true="-limma" false="" limma} \
      ~{if defined(export) then ("-export " +  '"' + export + '"') else ""} \
      ~{true="-fdr" false="" fdr} \
      ~{true="-pvalue" false="" p_value} \
      ~{true="-log2fold" false="" log_twofold} \
      ~{true="-rlog" false="" r_log} \
      ~{true="-vst" false="" vst} \
      ~{true="-simpleNorm" false="" simple_norm} \
      ~{true="-raw" false="" raw}
  >>>
  parameter_meta {
    rna: "(for analyzeRNA.pl formatted input, default)"
    repeats: "(for analyzeRepeats.pl formatted input file)"
    peaks: "(for annotatePeaks.pl formatted input file)"
    loop: "(for output files from findTADsAndLoops.pl)"
    pc_one: "(for output files from annotatePeaks.pl looking at PC1 bedGraphs, try -pc1options)"
    basic: "(for simple file with one column of gene identifiers and then the count data)"
    dispersion: "<#> (edgeR common dispersion to use if no replicates, default: 0.05)"
    norm_two_total: "(normalize using tag directory totals, default: normalize to gene totals(i.e.table)"
    avs_a: "(compare each group vs. each group, default: compare 1st group vs. others)"
    show_r: "(Show R status updates, command output)"
    de_seq_two: "(use DESeq2, now the default)"
    de_seq: "(use DESeq instead of DESeq2 - doesn't support batch mode)"
    edger: "(use edgeR, - doesn't support -norm2total for normalization to total mapped reads)"
    limma: "(use limma, set to work on linear, non-integer values i.e. TAD IRs, PC1 values, etc.)"
    export: "(output differential expression gene lists with filename prefix)"
    fdr: "<#> (FDR threshold for diff. expression reporting, default: 0.05)"
    p_value: "<#> (p-value threshold for diff. expression reporting, default: uses -fdr)"
    log_twofold: "<#> (Log2 Fold threshold for diff. expression reporting, default: 1.0)"
    r_log: "(Use DESeq2's rlog transform to normalize output matrix, default)"
    vst: "(Use DESeq2's vst transform, quicker for large sample sets)"
    simple_norm: "(Normalize to experiment totals, i.e. basic normalization)"
    raw: "(do not normalize read counts in output table, keep raw values)"
    data_file: ""
    group_code_dot_dot_dot: ""
  }
}