class: CommandLineTool
id: htseq_count_barcodes.cwl
inputs:
- id: in_format
  doc: "Type of <alignment_file> data. DEPRECATED: file format\nis detected automatically.\
    \ This option is ignored."
  type: string?
  inputBinding:
    prefix: --format
- id: in_order
  doc: "'pos' or 'name'. Sorting order of <alignment_file>\n(default: name). Paired-end\
    \ sequencing data must be\nsorted either by position or by read name, and the\n\
    sorting order must be specified. Ignored for single-\nend data."
  type: string?
  inputBinding:
    prefix: --order
- id: in_max_reads_in_buffer
  doc: "When <alignment_file> is paired end sorted by\nposition, allow only so many\
    \ reads to stay in memory\nuntil the mates are found (raising this number will\n\
    use more memory). Has no effect for single end or\npaired end sorted by name"
  type: long?
  inputBinding:
    prefix: --max-reads-in-buffer
- id: in_stranded
  doc: "Whether the data is from a strand-specific assay.\nSpecify 'yes', 'no', or\
    \ 'reverse' (default: yes).\n'reverse' means 'yes' with reversed strand\ninterpretation"
  type: string?
  inputBinding:
    prefix: --stranded
- id: in_mina_qual
  doc: "Skip all reads with MAPQ alignment quality lower than\nthe given minimum value\
    \ (default: 10). MAPQ is the 5th\ncolumn of a SAM/BAM file and its usage depends\
    \ on the\nsoftware used to map the reads."
  type: File?
  inputBinding:
    prefix: --minaqual
- id: in_type
  doc: "Feature type (3rd column in GTF file) to be used, all\nfeatures of other type\
    \ are ignored (default, suitable\nfor Ensembl GTF files: exon)"
  type: File?
  inputBinding:
    prefix: --type
- id: in_id_attr
  doc: "GTF attribute to be used as feature ID (default,\nsuitable for Ensembl GTF\
    \ files: gene_id)"
  type: string?
  inputBinding:
    prefix: --idattr
- id: in_additional_attr
  doc: "Additional feature attributes (default: none, suitable\nfor Ensembl GTF files:\
    \ gene_name). Use multiple times\nfor each different attribute"
  type: string?
  inputBinding:
    prefix: --additional-attr
- id: in_mode
  doc: "Mode to handle reads overlapping more than one feature\n(choices: union, intersection-strict,\
    \ intersection-\nnonempty; default: union)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_non_unique
  doc: "Whether to score reads that are not uniquely aligned\nor ambiguously assigned\
    \ to features"
  type: string?
  inputBinding:
    prefix: --nonunique
- id: in_secondary_alignments
  doc: Whether to score secondary alignments (0x100 flag)
  type: string?
  inputBinding:
    prefix: --secondary-alignments
- id: in_supplementary_alignments
  doc: Whether to score supplementary alignments (0x800 flag)
  type: string?
  inputBinding:
    prefix: --supplementary-alignments
- id: in_sam_out
  doc: "Write out all SAM alignment records into aSAM/BAM\nfile, annotating each line\
    \ with its feature assignment\n(as an optional field with tag 'XF'). See the -p\n\
    option to use BAM instead of SAM."
  type: File?
  inputBinding:
    prefix: --samout
- id: in_sam_out_format
  doc: Format to use with the --samout option.
  type: string?
  inputBinding:
    prefix: --samout-format
- id: in_delimiter
  doc: 'Column delimiter in output (default: TAB).'
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_counts_output
  doc: "TSV/CSV filename to output the counts to instead of\nstdout."
  type: File?
  inputBinding:
    prefix: --counts_output
- id: in_cell_barcode
  doc: "BAM tag used for the cell barcode (default compatible\nwith 10X Genomics Chromium\
    \ is CB)."
  type: long?
  inputBinding:
    prefix: --cell-barcode
- id: in_umi
  doc: "BAM tag used for the unique molecular identifier, also\nknown as molecular\
    \ barcode (default compatible with\n10X Genomics Chromium is UB)."
  type: long?
  inputBinding:
    prefix: --UMI
- id: in_quiet
  doc: Suppress progress report
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_sam_filename
  doc: "Path to the SAM/BAM file containing the barcoded,\nmapped reads. If '-' is\
    \ selected, read from standard\ninput"
  type: string
  inputBinding:
    position: 0
- id: in_features_filename
  doc: Path to the GTF file containing the features
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sam_out
  doc: "Write out all SAM alignment records into aSAM/BAM\nfile, annotating each line\
    \ with its feature assignment\n(as an optional field with tag 'XF'). See the -p\n\
    option to use BAM instead of SAM."
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_out)
- id: out_counts_output
  doc: "TSV/CSV filename to output the counts to instead of\nstdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_counts_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/htseq:0.13.5--py37h0498b6d_0
cwlVersion: v1.1
baseCommand:
- htseq-count-barcodes
