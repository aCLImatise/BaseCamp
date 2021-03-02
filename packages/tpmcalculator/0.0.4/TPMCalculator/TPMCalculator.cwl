class: CommandLineTool
id: TPMCalculator.cwl
inputs:
- id: in_print_info
  doc: Print info
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_version
  doc: Print version
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_gtf_file
  doc: GTF file
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_directory_bam_files
  doc: Directory with the BAM files
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_bam_file
  doc: BAM file
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_gene_key_use
  doc: 'Gene key to use from GTF file. Default: gene_id'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_transcript_key_use
  doc: 'Transcript key to use from GTF file. Default: transcript_id'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_smaller_size_allowed
  doc: 'Smaller size allowed for an intron created for genes. Default: 16. We recommend
    to use the reads length'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_use_properly_paired
  doc: 'Use only properly paired reads. Default: No. Recommended for paired-end reads.'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_minimum_mapq_value
  doc: 'Minimum MAPQ value to filter out reads. Default: 0. This value depends on
    the aligner MAPQ value.'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_minimum_overlap_reads
  doc: 'Minimum overlap between a reads and a feature. Default: 8.'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_extended_output_include
  doc: 'Extended output. This will include transcript level TPM values. Default: No.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_print_features_read
  doc: 'Print out all features with read counts equal to zero. Default: No.'
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tpmcalculator:0.0.4--h7376a40_0
cwlVersion: v1.1
baseCommand:
- TPMCalculator
