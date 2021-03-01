version 1.0

task GetDiffExpressionpl {
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
    File? export
    Boolean? fdr
    Boolean? p_value
    Boolean? log_twofold
    Boolean? r_log
    Boolean? vst
    Boolean? simple_norm
    Boolean? raw
    File data_file
    String group_code_dot_dot_dot
  }
  command <<<
    getDiffExpression_pl \
      ~{data_file} \
      ~{group_code_dot_dot_dot} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (repeats) then "-repeats" else ""} \
      ~{if (peaks) then "-peaks" else ""} \
      ~{if defined(loop) then ("-loop " +  '"' + loop + '"') else ""} \
      ~{if (pc_one) then "-pc1" else ""} \
      ~{if (basic) then "-basic" else ""} \
      ~{if (dispersion) then "-dispersion" else ""} \
      ~{if (norm_two_total) then "-norm2total" else ""} \
      ~{if (avs_a) then "-AvsA" else ""} \
      ~{if (show_r) then "-showR" else ""} \
      ~{if (de_seq_two) then "-DESeq2" else ""} \
      ~{if (de_seq) then "-DESeq" else ""} \
      ~{if (edger) then "-edgeR" else ""} \
      ~{if (limma) then "-limma" else ""} \
      ~{if defined(export) then ("-export " +  '"' + export + '"') else ""} \
      ~{if (fdr) then "-fdr" else ""} \
      ~{if (p_value) then "-pvalue" else ""} \
      ~{if (log_twofold) then "-log2fold" else ""} \
      ~{if (r_log) then "-rlog" else ""} \
      ~{if (vst) then "-vst" else ""} \
      ~{if (simple_norm) then "-simpleNorm" else ""} \
      ~{if (raw) then "-raw" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_export = "${in_export}"
  }
}