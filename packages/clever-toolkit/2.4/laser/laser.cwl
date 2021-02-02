class: CommandLineTool
id: laser.cwl
inputs:
- id: in_extra_sensitive
  doc: Be more sensitive (at the expense of runtime).
  type: boolean
  inputBinding:
    prefix: --extra-sensitive
- id: in_threads
  doc: Threads.
  type: string
  inputBinding:
    prefix: -T
- id: in_maximum_deletion_length
  doc: "Maximum deletion length to look for (default: 1000 in\nregular mode, 10000\
    \ when using --extra-sensitive)."
  type: long
  inputBinding:
    prefix: -M
- id: in_length_alignment_mapped
  doc: "Length of alignment seeds to be mapped by external\nread mapper (BWA), default:\
    \ 40."
  type: long
  inputBinding:
    prefix: -s
- id: in_filename_fastq_givena
  doc: "Filename of FASTQ file with split reads (if not given,\na temporary such file\
    \ be produced)."
  type: File
  inputBinding:
    prefix: -S
- id: in_tmpdir
  doc: "Directory to use for temporary files (if not given,\nsystem default is used)."
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_core_options
  doc: "Additional options to pass on to LASER core algorithm.\nCall \"laser-core\"\
    \ without parameters for a list of\noptions."
  type: string
  inputBinding:
    prefix: --core-options
- id: in_recal_options
  doc: "Additional options to pass on to LASER's recalibration\nalgorithm. Call \"\
    laser-recalibrate\" without parameters\nfor a list of options."
  type: string
  inputBinding:
    prefix: --recal-options
- id: in_minimum_expected_support
  doc: "Minimum expected support for a SNP/indel in order to\nbe written to file with\
    \ putative variations. These\nSNPs/indels will be used for recalibration of\n\
    alignment scores."
  type: File
  inputBinding:
    prefix: -w
- id: in_keep_raw_bam
  doc: "Keep BAM file produced by laser-core. Default: only\nkeep BAM after recalibration."
  type: boolean
  inputBinding:
    prefix: --keep_raw_bam
- id: in_secondary
  doc: Include secondary alignments in the BAM file.
  type: boolean
  inputBinding:
    prefix: --secondary
- id: in_x_a
  doc: "Encode secondary alignments in XA tags (default:\nseparate lines)."
  type: boolean
  inputBinding:
    prefix: --xa
- id: in_adv_cigar
  doc: Use X/= in CIGAR strings instead of M.
  type: boolean
  inputBinding:
    prefix: --adv-cigar
- id: in_dont_recalibrate
  doc: Skip recalibration step.
  type: boolean
  inputBinding:
    prefix: --dont-recalibrate
- id: in_inter_chromosomal
  doc: "Look for interchromosomal read pairs and for\ninterchromosomal split reads.\n"
  type: boolean
  inputBinding:
    prefix: --interchromosomal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- laser
