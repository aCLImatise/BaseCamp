class: CommandLineTool
id: ../../../strling_merge.cwl
inputs:
- id: in_fast_a
  doc: path to fasta file (required if using CRAM input)
  type: File
  inputBinding:
    prefix: --fasta
- id: in_window
  doc: 'Number of bp within which to search for reads supporting the other side of
    a bound. Estimated from the insert size distribution by default. (default: -1)'
  type: long
  inputBinding:
    prefix: --window
- id: in_min_support
  doc: 'minimum number of supporting reads for a locus to be reported (default: 6)'
  type: long
  inputBinding:
    prefix: --min-support
- id: in_min_clip
  doc: 'minimum number of supporting clipped reads for each side of a locus (default:
    0)'
  type: long
  inputBinding:
    prefix: --min-clip
- id: in_min_clip_total
  doc: 'minimum total number of supporting clipped reads for a locus (default: 0)'
  type: long
  inputBinding:
    prefix: --min-clip-total
- id: in_min_mapq
  doc: 'minimum mapping quality (does not apply to STR reads) (default: 40)'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: in_bed
  doc: 'Annoated bed file specifying additional STR loci to genotype. Format is: chr
    start stop repeatunit [name]'
  type: File
  inputBinding:
    prefix: --bed
- id: in_output_prefix
  doc: 'prefix for output files. Suffix will be -bounds.txt (default: strling)'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- strling
- merge
