class: CommandLineTool
id: gretel.cwl
inputs:
- id: start
  doc: '1-indexed included start base position [default: 1]'
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: '1-indexed inlcuded end base position [default: reference length]'
  type: string
  inputBinding:
    prefix: --end
- id: paths
  doc: Maximum number of paths to generate [default:100]
  type: File
  inputBinding:
    prefix: --paths
- id: master
  doc: Master sequence (will be used to fill in homogeneous gaps in haplotypes, otherwise
    --gapchar)
  type: string
  inputBinding:
    prefix: --master
- id: gap_char
  doc: Character to fill homogeneous gaps in haplotypes if no --master [default N]
  type: string
  inputBinding:
    prefix: --gapchar
- id: del_char
  doc: Character to output in haplotype for deletion (eg. -) [default is blank]
  type: string
  inputBinding:
    prefix: --delchar
- id: quiet
  doc: Don't output anything other than a single summary line.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: out
  doc: Output directory [default .]
  type: string
  inputBinding:
    prefix: --out
- id: threads
  doc: Number of BAM iterators [default 1]
  type: string
  inputBinding:
    prefix: --threads
- id: debug_reads
  doc: A newline delimited list of read names to output debug data when parsing the
    BAM
  type: string
  inputBinding:
    prefix: --debugreads
- id: debug_pos
  doc: A newline delimited list of 1-indexed genomic positions to output debug data
    when parsing the BAM
  type: string
  inputBinding:
    prefix: --debugpos
- id: debug_hp_os
  doc: A comma delimited list of 1-indexed SNP positions to output debug data when
    predicting haplotypes
  type: string
  inputBinding:
    prefix: --debughpos
- id: dump_matrix
  doc: Location to dump the Hansel matrix to disk
  type: string
  inputBinding:
    prefix: --dumpmatrix
- id: dump_snps
  doc: Location to dump the SNP positions to disk
  type: string
  inputBinding:
    prefix: --dumpsnps
- id: pepper
  doc: enable a more permissive pileup by setting the pysam pileup stepper to 'all',
    instead of 'samtools'. Note that this will allow improper pairs.
  type: boolean
  inputBinding:
    prefix: --pepper
outputs: []
cwlVersion: v1.1
baseCommand:
- gretel
