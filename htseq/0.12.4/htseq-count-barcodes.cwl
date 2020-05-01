#!/usr/bin/env cwl-runner

baseCommand:
- htseq-count-barcodes
class: CommandLineTool
cwlVersion: v1.0
id: htseq-count-barcodes
inputs:
- doc: Path to the SAM/BAM file containing the barcoded, mapped reads. If '-' is selected,
    read from standard input
  id: sam_filename
  inputBinding:
    position: 0
  type: string
- doc: Path to the GTF file containing the features
  id: features_filename
  inputBinding:
    position: 1
  type: string
- doc: 'Type of <alignment_file> data. DEPRECATED: file format is detected automatically.
    This option is ignored.'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: "'pos' or 'name'. Sorting order of <alignment_file> (default: name). Paired-end\
    \ sequencing data must be sorted either by position or by read name, and the sorting\
    \ order must be specified. Ignored for single- end data."
  id: order
  inputBinding:
    prefix: --order
  type: string
- doc: When <alignment_file> is paired end sorted by position, allow only so many
    reads to stay in memory until the mates are found (raising this number will use
    more memory). Has no effect for single end or paired end sorted by name
  id: max_reads_in_buffer
  inputBinding:
    prefix: --max-reads-in-buffer
  type: long
- doc: "Whether the data is from a strand-specific assay. Specify 'yes', 'no', or\
    \ 'reverse' (default: yes). 'reverse' means 'yes' with reversed strand interpretation"
  id: stranded
  inputBinding:
    prefix: --stranded
  type: string
- doc: 'Skip all reads with MAPQ alignment quality lower than the given minimum value
    (default: 10). MAPQ is the 5th column of a SAM/BAM file and its usage depends
    on the software used to map the reads.'
  id: mina_qual
  inputBinding:
    prefix: --minaqual
  type: long
- doc: 'Feature type (3rd column in GTF file) to be used, all features of other type
    are ignored (default, suitable for Ensembl GTF files: exon)'
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: 'GTF attribute to be used as feature ID (default, suitable for Ensembl GTF
    files: gene_id)'
  id: id_attr
  inputBinding:
    prefix: --idattr
  type: string
- doc: 'Additional feature attributes (default: none, suitable for Ensembl GTF files:
    gene_name). Use multiple times for each different attribute'
  id: additional_attr
  inputBinding:
    prefix: --additional-attr
  type: string
- doc: 'Mode to handle reads overlapping more than one feature (choices: union, intersection-strict,
    intersection- nonempty; default: union)'
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: Whether to score reads that are not uniquely aligned or ambiguously assigned
    to features
  id: non_unique
  inputBinding:
    prefix: --nonunique
  type: string
- doc: Whether to score secondary alignments (0x100 flag)
  id: secondary_alignments
  inputBinding:
    prefix: --secondary-alignments
  type: string
- doc: Whether to score supplementary alignments (0x800 flag)
  id: supplementary_alignments
  inputBinding:
    prefix: --supplementary-alignments
  type: string
- doc: Write out all SAM alignment records into aSAM/BAM file, annotating each line
    with its feature assignment (as an optional field with tag 'XF'). See the -p option
    to use BAM instead of SAM.
  id: sam_out
  inputBinding:
    prefix: --samout
  type: string
- doc: Format to use with the --samout option.
  id: sam_out_format
  inputBinding:
    prefix: --samout-format
  type: string
- doc: 'Column delimiter in output (default: TAB).'
  id: delimiter
  inputBinding:
    prefix: --delimiter
  type: string
- doc: TSV/CSV filename to output the counts to instead of stdout.
  id: counts_output
  inputBinding:
    prefix: --counts_output
  type: string
- doc: BAM tag used for the cell barcode (default compatible with 10X Genomics Chromium
    is CB).
  id: cell_barcode
  inputBinding:
    prefix: --cell-barcode
  type: string
- doc: BAM tag used for the unique molecular identifier, also known as molecular barcode
    (default compatible with 10X Genomics Chromium is UB).
  id: umi
  inputBinding:
    prefix: --UMI
  type: string
- doc: Suppress progress report
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
