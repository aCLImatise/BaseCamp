#!/usr/bin/env cwl-runner

baseCommand:
- getDiffExpression.pl
class: CommandLineTool
cwlVersion: v1.0
id: getdiffexpression.pl
inputs:
- doc: (for analyzeRNA.pl formatted input, default)
  id: rna
  inputBinding:
    prefix: -rna
  type: boolean
- doc: (for analyzeRepeats.pl formatted input file)
  id: repeats
  inputBinding:
    prefix: -repeats
  type: boolean
- doc: (for annotatePeaks.pl formatted input file)
  id: peaks
  inputBinding:
    prefix: -peaks
  type: boolean
- doc: (for output files from findTADsAndLoops.pl)
  id: loop
  inputBinding:
    prefix: -loop
  type: string
- doc: (for output files from annotatePeaks.pl looking at PC1 bedGraphs, try -pc1options)
  id: pc1
  inputBinding:
    prefix: -pc1
  type: boolean
- doc: (for simple file with one column of gene identifiers and then the count data)
  id: basic
  inputBinding:
    prefix: -basic
  type: boolean
- doc: '<#> (edgeR common dispersion to use if no replicates, default: 0.05)'
  id: dispersion
  inputBinding:
    prefix: -dispersion
  type: boolean
- doc: '(normalize using tag directory totals, default: normalize to gene totals(i.e.table)'
  id: norm2_total
  inputBinding:
    prefix: -norm2total
  type: boolean
- doc: '(compare each group vs. each group, default: compare 1st group vs. others)'
  id: avs_a
  inputBinding:
    prefix: -AvsA
  type: boolean
- doc: (Show R status updates, command output)
  id: show_r
  inputBinding:
    prefix: -showR
  type: boolean
- doc: (use DESeq2, now the default)
  id: deseq2
  inputBinding:
    prefix: -DESeq2
  type: boolean
- doc: (use DESeq instead of DESeq2 - doesn't support batch mode)
  id: de_seq
  inputBinding:
    prefix: -DESeq
  type: boolean
- doc: (use edgeR, - doesn't support -norm2total for normalization to total mapped
    reads)
  id: edger
  inputBinding:
    prefix: -edgeR
  type: boolean
- doc: (use limma, set to work on linear, non-integer values i.e. TAD IRs, PC1 values,
    etc.)
  id: limma
  inputBinding:
    prefix: -limma
  type: boolean
- doc: (output differential expression gene lists with filename prefix)
  id: export
  inputBinding:
    prefix: -export
  type: string
- doc: '<#> (FDR threshold for diff. expression reporting, default: 0.05)'
  id: fdr
  inputBinding:
    prefix: -fdr
  type: boolean
- doc: '<#> (p-value threshold for diff. expression reporting, default: uses -fdr)'
  id: p_value
  inputBinding:
    prefix: -pvalue
  type: boolean
- doc: '<#> (Log2 Fold threshold for diff. expression reporting, default: 1.0)'
  id: log2fold
  inputBinding:
    prefix: -log2fold
  type: boolean
- doc: (Use DESeq2's rlog transform to normalize output matrix, default)
  id: r_log
  inputBinding:
    prefix: -rlog
  type: boolean
- doc: (Use DESeq2's vst transform, quicker for large sample sets)
  id: vst
  inputBinding:
    prefix: -vst
  type: boolean
- doc: (Normalize to experiment totals, i.e. basic normalization)
  id: simple_norm
  inputBinding:
    prefix: -simpleNorm
  type: boolean
- doc: (do not normalize read counts in output table, keep raw values)
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
