class: CommandLineTool
id: analyzeRNA.pl.cwl
inputs:
- id: in_or
  doc: ': analyzeRNA.pl <custom RNA/GTF file> <organism|none>  [additional options...]'
  type: boolean?
  inputBinding:
    prefix: -or-
- id: in_list_experiment_directories
  doc: "[tag directory 2] ... (list of experiment directories to show\ntag counts\
    \ for) NOTE: -dfile <file> where file is a list of directories in first column"
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_rp_km
  doc: (Report results as reads per kb per million mapped)
  type: boolean?
  inputBinding:
    prefix: -rpkm
- id: in_norm
  doc: '<#> (Normalize to total mapped tags: default 1e7)'
  type: boolean?
  inputBinding:
    prefix: -norm
- id: in_norm_matrix
  doc: '<#> (Normalize to total tags in gene expression matrix: not used)'
  type: boolean?
  inputBinding:
    prefix: -normMatrix
- id: in_no_adj
  doc: (Don't normalize, -raw works too)
  type: boolean?
  inputBinding:
    prefix: -noadj
- id: in_count
  doc: '(Count tags in introns, exons, etc., default: genes)'
  type: long?
  inputBinding:
    prefix: -count
- id: in_no_condensing
  doc: '(do not condense counts from entries will same ID, default: do condense)'
  type: boolean?
  inputBinding:
    prefix: -noCondensing
- id: in_pc
  doc: '<#> (maximum tags to count per position, default: 0=no limit)'
  type: boolean?
  inputBinding:
    prefix: -pc
- id: in_strand
  doc: '<+|-|both> (count tags on indicated strand, default: +)'
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_gene
  doc: "... (Adds additional data to result based on the closest gene.\nThis is useful\
    \ for adding gene expression data.  The file must have a header,\nand the first\
    \ column must be a GeneID, Accession number, etc.  If the peak\ncannot be mapped\
    \ to data in the file then the entry will be left empty."
  type: File?
  inputBinding:
    prefix: -gene
- id: in_log
  doc: (output tag counts as randomized log2 values - for scatter plots)
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_sqrt
  doc: (output tag counts as randomized sqrt values - for scatter plots)
  type: boolean?
  inputBinding:
    prefix: -sqrt
- id: in_tss
  doc: (estimate actual TSS in 1st exon and report as the centered position in columns
    3 & 4)
  type: boolean?
  inputBinding:
    prefix: -tss
- id: in_start
  doc: '<#> (start counting tags relative # offset of beginning of gene)'
  type: boolean?
  inputBinding:
    prefix: -start
- id: in_end
  doc: '<#> (finish counting tags relative # offset to end of the gene)'
  type: boolean?
  inputBinding:
    prefix: -end
- id: in_maxlength
  doc: "<#> (Don't count tags past # bp from the TSS, useful for GroSeq)"
  type: boolean?
  inputBinding:
    prefix: -maxLength
- id: in_pausing
  doc: "<#> (calculate ratio of pausing first [# bp of transcript] to gene body)\n\
    Produces 3 columns - promoter rpk, body rpk, and ratio (add -log for log versions)\n\
    Also sets \"-count genes\".  Use \"-strand both\" when analyzing Pol II ChIP-Seq\n\
    rpk is reads per kb - set -norm 1e6 or -normMatrix 1e6 to get rpkm\n"
  type: boolean?
  inputBinding:
    prefix: -pausing
- id: in_rna_vertical_line_repeats
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_version
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_additional
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- analyzeRNA.pl
