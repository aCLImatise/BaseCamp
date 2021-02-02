class: CommandLineTool
id: findcsRNATSS.pl_tag directory.cwl
inputs:
- id: in_o
  doc: (*see note below)
  type: string
  inputBinding:
    prefix: -o
- id: in_rna
  doc: (*see note below)
  type: Directory
  inputBinding:
    prefix: -rna
- id: in_genome
  doc: (HOMER genome identifier or FASTA file)
  type: File
  inputBinding:
    prefix: -genome
- id: in_gtf
  doc: (gene annotation, by default will use genome annotation if available)
  type: File
  inputBinding:
    prefix: -gtf
- id: in_n_tag_threshold
  doc: '<#> (minimum number of norm. tags per TSS cluster, default: 7)'
  type: boolean
  inputBinding:
    prefix: -ntagThreshold
- id: in_size
  doc: '<#> (size of regions to check for significant TSS clusters, default: 150)'
  type: boolean
  inputBinding:
    prefix: -size
- id: in_include_single_exons
  doc: '(include single exon genes for TP/FP calculations, default: only use multiexon
    genes)'
  type: boolean
  inputBinding:
    prefix: -includeSingleExons
- id: in_meta_gene
  doc: (Include a metagene plot of read distributions)
  type: boolean
  inputBinding:
    prefix: -metagene
- id: in_cpu
  doc: <#> (max CPUs to use)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_max_input_log_twofold
  doc: '<#> (maximum log2 fold enrichment vs. input or RNA, default: 30000000000)'
  type: boolean
  inputBinding:
    prefix: -maxInputLog2Fold
- id: in_max_rna_log_twofold
  doc: '<#> (maximum log2 fold enrichment vs. input or RNA, default: 30000000000)'
  type: boolean
  inputBinding:
    prefix: -maxRNALog2Fold
- id: in_mind_ist_diff
  doc: '<#> (minimum CDF difference to consider for TP/FP calculation, default: 0.15)'
  type: boolean
  inputBinding:
    prefix: -minDistDiff
- id: in_default_log_twofold
  doc: '<#> (if annotation-based TP/FP threshold calculation failes, default: 1)'
  type: boolean
  inputBinding:
    prefix: -defaultLog2Fold
- id: in_pseudo_count
  doc: '<#> (number of normalizaed reads added to input/target read counts, default:
    1.0)'
  type: boolean
  inputBinding:
    prefix: -pseudoCount
- id: in_local_fold_enrichment
  doc: '<#> (local fold enrichment used for initial TSS identification, default: 2)'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_no_filter_rna
  doc: (only use RNAseq for stability calculations, not for filtering putative TSS)
  type: boolean
  inputBinding:
    prefix: -noFilterRNA
- id: in_sense_region
  doc: '<#>,<#> (Size of region to calculate RNA/input read density,default: -100,500)'
  type: boolean
  inputBinding:
    prefix: -senseRegion
- id: in_antisense_region
  doc: '<#>,<#> (Size of region to calculate RNA/input read density,default: -500,100)'
  type: boolean
  inputBinding:
    prefix: -antisenseRegion
- id: in_rna_region
  doc: '<#>,<#> (Size of region to calculate RNA coverage for FP identification,default:
    -150,-10)'
  type: boolean
  inputBinding:
    prefix: -rnaRegion
- id: in_stable_threshold
  doc: '<#> (minimum RNAseq read density for stable transcript, def: 2)'
  type: boolean
  inputBinding:
    prefix: -stableThreshold
- id: in_bi_threshold
  doc: '<#> (minimum divergent csRNAseq signal for bi/divergent TSS, def: 2)'
  type: boolean
  inputBinding:
    prefix: -biThreshold
- id: in_dist
  doc: "<#> (minimum distance from annotated TSS to assign 'distal' annotation, def:\
    \ 500)"
  type: boolean
  inputBinding:
    prefix: -dist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- findcsRNATSS.pl
- tag directory
