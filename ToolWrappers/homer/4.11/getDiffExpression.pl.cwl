class: CommandLineTool
id: getDiffExpression.pl.cwl
inputs:
- id: in_rna
  doc: (for analyzeRNA.pl formatted input, default)
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_repeats
  doc: (for analyzeRepeats.pl formatted input file)
  type: boolean
  inputBinding:
    prefix: -repeats
- id: in_peaks
  doc: (for annotatePeaks.pl formatted input file)
  type: boolean
  inputBinding:
    prefix: -peaks
- id: in_loop
  doc: (for output files from findTADsAndLoops.pl)
  type: string
  inputBinding:
    prefix: -loop
- id: in_pc_one
  doc: (for output files from annotatePeaks.pl looking at PC1 bedGraphs, try -pc1options)
  type: boolean
  inputBinding:
    prefix: -pc1
- id: in_basic
  doc: (for simple file with one column of gene identifiers and then the count data)
  type: boolean
  inputBinding:
    prefix: -basic
- id: in_dispersion
  doc: '<#> (edgeR common dispersion to use if no replicates, default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -dispersion
- id: in_norm_two_total
  doc: '(normalize using tag directory totals, default: normalize to gene totals(i.e.table)'
  type: boolean
  inputBinding:
    prefix: -norm2total
- id: in_avs_a
  doc: '(compare each group vs. each group, default: compare 1st group vs. others)'
  type: boolean
  inputBinding:
    prefix: -AvsA
- id: in_show_r
  doc: (Show R status updates, command output)
  type: boolean
  inputBinding:
    prefix: -showR
- id: in_de_seq_two
  doc: (use DESeq2, now the default)
  type: boolean
  inputBinding:
    prefix: -DESeq2
- id: in_de_seq
  doc: (use DESeq instead of DESeq2 - doesn't support batch mode)
  type: boolean
  inputBinding:
    prefix: -DESeq
- id: in_edger
  doc: (use edgeR, - doesn't support -norm2total for normalization to total mapped
    reads)
  type: boolean
  inputBinding:
    prefix: -edgeR
- id: in_limma
  doc: (use limma, set to work on linear, non-integer values i.e. TAD IRs, PC1 values,
    etc.)
  type: boolean
  inputBinding:
    prefix: -limma
- id: in_export
  doc: (output differential expression gene lists with filename prefix)
  type: File
  inputBinding:
    prefix: -export
- id: in_fdr
  doc: '<#> (FDR threshold for diff. expression reporting, default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -fdr
- id: in_p_value
  doc: '<#> (p-value threshold for diff. expression reporting, default: uses -fdr)'
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: in_log_twofold
  doc: '<#> (Log2 Fold threshold for diff. expression reporting, default: 1.0)'
  type: boolean
  inputBinding:
    prefix: -log2fold
- id: in_r_log
  doc: (Use DESeq2's rlog transform to normalize output matrix, default)
  type: boolean
  inputBinding:
    prefix: -rlog
- id: in_vst
  doc: (Use DESeq2's vst transform, quicker for large sample sets)
  type: boolean
  inputBinding:
    prefix: -vst
- id: in_simple_norm
  doc: (Normalize to experiment totals, i.e. basic normalization)
  type: boolean
  inputBinding:
    prefix: -simpleNorm
- id: in_raw
  doc: (do not normalize read counts in output table, keep raw values)
  type: boolean
  inputBinding:
    prefix: -raw
- id: in_data_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_group_code_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_export
  doc: (output differential expression gene lists with filename prefix)
  type: File
  outputBinding:
    glob: $(inputs.in_export)
cwlVersion: v1.1
baseCommand:
- getDiffExpression.pl
