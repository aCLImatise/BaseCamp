class: CommandLineTool
id: htseq_count_barcodes.cwl
inputs:
- id: sam_filename
  doc: Path to the SAM/BAM file containing the barcoded, mapped reads. If '-' is selected,
    read from standard input
  type: string
  inputBinding:
    position: 0
- id: features_filename
  doc: Path to the GTF file containing the features
  type: string
  inputBinding:
    position: 1
- id: format
  doc: 'Type of <alignment_file> data. DEPRECATED: file format is detected automatically.
    This option is ignored.'
  type: string
  inputBinding:
    prefix: --format
- id: order
  doc: "'pos' or 'name'. Sorting order of <alignment_file> (default: name). Paired-end\
    \ sequencing data must be sorted either by position or by read name, and the sorting\
    \ order must be specified. Ignored for single- end data."
  type: string
  inputBinding:
    prefix: --order
- id: max_reads_in_buffer
  doc: When <alignment_file> is paired end sorted by position, allow only so many
    reads to stay in memory until the mates are found (raising this number will use
    more memory). Has no effect for single end or paired end sorted by name
  type: long
  inputBinding:
    prefix: --max-reads-in-buffer
- id: stranded
  doc: "Whether the data is from a strand-specific assay. Specify 'yes', 'no', or\
    \ 'reverse' (default: yes). 'reverse' means 'yes' with reversed strand interpretation"
  type: string
  inputBinding:
    prefix: --stranded
- id: mina_qual
  doc: 'Skip all reads with MAPQ alignment quality lower than the given minimum value
    (default: 10). MAPQ is the 5th column of a SAM/BAM file and its usage depends
    on the software used to map the reads.'
  type: long
  inputBinding:
    prefix: --minaqual
- id: type
  doc: 'Feature type (3rd column in GTF file) to be used, all features of other type
    are ignored (default, suitable for Ensembl GTF files: exon)'
  type: string
  inputBinding:
    prefix: --type
- id: id_attr
  doc: 'GTF attribute to be used as feature ID (default, suitable for Ensembl GTF
    files: gene_id)'
  type: string
  inputBinding:
    prefix: --idattr
- id: additional_attr
  doc: 'Additional feature attributes (default: none, suitable for Ensembl GTF files:
    gene_name). Use multiple times for each different attribute'
  type: string
  inputBinding:
    prefix: --additional-attr
- id: mode
  doc: 'Mode to handle reads overlapping more than one feature (choices: union, intersection-strict,
    intersection- nonempty; default: union)'
  type: string
  inputBinding:
    prefix: --mode
- id: non_unique
  doc: Whether to score reads that are not uniquely aligned or ambiguously assigned
    to features
  type: string
  inputBinding:
    prefix: --nonunique
- id: secondary_alignments
  doc: Whether to score secondary alignments (0x100 flag)
  type: string
  inputBinding:
    prefix: --secondary-alignments
- id: supplementary_alignments
  doc: Whether to score supplementary alignments (0x800 flag)
  type: string
  inputBinding:
    prefix: --supplementary-alignments
- id: sam_out
  doc: Write out all SAM alignment records into aSAM/BAM file, annotating each line
    with its feature assignment (as an optional field with tag 'XF'). See the -p option
    to use BAM instead of SAM.
  type: string
  inputBinding:
    prefix: --samout
- id: sam_out_format
  doc: Format to use with the --samout option.
  type: string
  inputBinding:
    prefix: --samout-format
- id: delimiter
  doc: 'Column delimiter in output (default: TAB).'
  type: string
  inputBinding:
    prefix: --delimiter
- id: counts_output
  doc: TSV/CSV filename to output the counts to instead of stdout.
  type: string
  inputBinding:
    prefix: --counts_output
- id: cell_barcode
  doc: BAM tag used for the cell barcode (default compatible with 10X Genomics Chromium
    is CB).
  type: string
  inputBinding:
    prefix: --cell-barcode
- id: umi
  doc: BAM tag used for the unique molecular identifier, also known as molecular barcode
    (default compatible with 10X Genomics Chromium is UB).
  type: string
  inputBinding:
    prefix: --UMI
- id: quiet
  doc: Suppress progress report
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- htseq-count-barcodes
