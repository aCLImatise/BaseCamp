class: CommandLineTool
id: getDiffExpression.pl.cwl
inputs:
- id: rna
  doc: (for analyzeRNA.pl formatted input, default)
  type: boolean
  inputBinding:
    prefix: -rna
- id: repeats
  doc: (for analyzeRepeats.pl formatted input file)
  type: boolean
  inputBinding:
    prefix: -repeats
- id: peaks
  doc: (for annotatePeaks.pl formatted input file)
  type: boolean
  inputBinding:
    prefix: -peaks
- id: loop
  doc: (for output files from findTADsAndLoops.pl)
  type: string
  inputBinding:
    prefix: -loop
- id: pc1
  doc: (for output files from annotatePeaks.pl looking at PC1 bedGraphs, try -pc1options)
  type: boolean
  inputBinding:
    prefix: -pc1
- id: basic
  doc: (for simple file with one column of gene identifiers and then the count data)
  type: boolean
  inputBinding:
    prefix: -basic
- id: dispersion
  doc: '<#> (edgeR common dispersion to use if no replicates, default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -dispersion
- id: norm2_total
  doc: '(normalize using tag directory totals, default: normalize to gene totals(i.e.table)'
  type: boolean
  inputBinding:
    prefix: -norm2total
- id: avs_a
  doc: '(compare each group vs. each group, default: compare 1st group vs. others)'
  type: boolean
  inputBinding:
    prefix: -AvsA
- id: show_r
  doc: (Show R status updates, command output)
  type: boolean
  inputBinding:
    prefix: -showR
- id: deseq2
  doc: (use DESeq2, now the default)
  type: boolean
  inputBinding:
    prefix: -DESeq2
- id: de_seq
  doc: (use DESeq instead of DESeq2 - doesn't support batch mode)
  type: boolean
  inputBinding:
    prefix: -DESeq
- id: edger
  doc: (use edgeR, - doesn't support -norm2total for normalization to total mapped
    reads)
  type: boolean
  inputBinding:
    prefix: -edgeR
- id: limma
  doc: (use limma, set to work on linear, non-integer values i.e. TAD IRs, PC1 values,
    etc.)
  type: boolean
  inputBinding:
    prefix: -limma
- id: export
  doc: (output differential expression gene lists with filename prefix)
  type: string
  inputBinding:
    prefix: -export
- id: fdr
  doc: '<#> (FDR threshold for diff. expression reporting, default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -fdr
- id: p_value
  doc: '<#> (p-value threshold for diff. expression reporting, default: uses -fdr)'
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: log2fold
  doc: '<#> (Log2 Fold threshold for diff. expression reporting, default: 1.0)'
  type: boolean
  inputBinding:
    prefix: -log2fold
- id: r_log
  doc: (Use DESeq2's rlog transform to normalize output matrix, default)
  type: boolean
  inputBinding:
    prefix: -rlog
- id: vst
  doc: (Use DESeq2's vst transform, quicker for large sample sets)
  type: boolean
  inputBinding:
    prefix: -vst
- id: simple_norm
  doc: (Normalize to experiment totals, i.e. basic normalization)
  type: boolean
  inputBinding:
    prefix: -simpleNorm
- id: raw
  doc: (do not normalize read counts in output table, keep raw values)
  type: boolean
  inputBinding:
    prefix: -raw
outputs: []
cwlVersion: v1.1
baseCommand:
- getDiffExpression.pl
