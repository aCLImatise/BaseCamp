class: CommandLineTool
id: deduplicate_bismark.cwl
inputs:
- id: in_single
  doc: 'deduplicate single-end BAM/SAM Bismark files. Default: [AUTO-DETECT]'
  type: boolean?
  inputBinding:
    prefix: --single
- id: in_paired
  doc: 'deduplicate paired-end BAM/SAM Bismark files. Default: [AUTO-DETECT]'
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_outfile
  doc: "[filename] The basename of a desired output file. This basename is modified\
    \ to end in '.deduplicated.bam',\nor '.multiple.deduplicated.bam' in '--multiple'\
    \ mode, for consistency reasons."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_output_dir
  doc: "[path]     Output directory, either relative or absolute. Output is written\
    \ to the current directory if not\nspecified explicitly."
  type: File?
  inputBinding:
    prefix: --output_dir
- id: in_barcode
  doc: "In addition to chromosome, start position and orientation this will also take\
    \ a potential barcode into\nconsideration while deduplicating. The barcode needs\
    \ to be the last element of the read ID and separated\nby a ':', e.g.: MISEQ:14:000000000-A55D0:1:1101:18024:2858_1:N:0:CTCCT"
  type: boolean?
  inputBinding:
    prefix: --barcode
- id: in_bam
  doc: "The output will be written out in BAM format. This script will attempt to\
    \ use the path to Samtools\nthat was specified with '--samtools_path', or, if\
    \ it hasn't been specified, attempt to find Samtools\nin the PATH. If no installation\
    \ of Samtools can be found, a GZIP compressed output is written out\ninstead (yielding\
    \ a .sam.gz output file). Default: ON."
  type: File?
  inputBinding:
    prefix: --bam
- id: in_sam
  doc: 'The output will be written out in SAM format. Default: OFF.'
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_multiple
  doc: "All specified input files are treated as one sample and concatenated together\
    \ for deduplication.\nThis uses Unix 'cat' for SAM files and 'samtools cat' for\
    \ BAM files. Additional notes for BAM files:\nAlthough this works on either BAM\
    \ or CRAM, all input files must be the same format as each other.\nThe sequence\
    \ dictionary of each input file must be identical, although this command does\
    \ not check this.\nBy default the header is taken from the first file to be concatenated."
  type: boolean?
  inputBinding:
    prefix: --multiple
- id: in_sam_tools_path
  doc: "[path]  The path to your Samtools installation, e.g. /home/user/samtools/.\
    \ Does not need to be specified\nexplicitly if Samtools is in the PATH already"
  type: boolean?
  inputBinding:
    prefix: --samtools_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "[filename] The basename of a desired output file. This basename is modified\
    \ to end in '.deduplicated.bam',\nor '.multiple.deduplicated.bam' in '--multiple'\
    \ mode, for consistency reasons."
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_output_dir
  doc: "[path]     Output directory, either relative or absolute. Output is written\
    \ to the current directory if not\nspecified explicitly."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_bam
  doc: "The output will be written out in BAM format. This script will attempt to\
    \ use the path to Samtools\nthat was specified with '--samtools_path', or, if\
    \ it hasn't been specified, attempt to find Samtools\nin the PATH. If no installation\
    \ of Samtools can be found, a GZIP compressed output is written out\ninstead (yielding\
    \ a .sam.gz output file). Default: ON."
  type: File?
  outputBinding:
    glob: $(inputs.in_bam)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bismark:0.23.0--0
cwlVersion: v1.1
baseCommand:
- deduplicate_bismark
