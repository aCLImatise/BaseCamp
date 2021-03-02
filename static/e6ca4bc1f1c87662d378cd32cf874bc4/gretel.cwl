class: CommandLineTool
id: gretel.cwl
inputs:
- id: in_start
  doc: '1-indexed included start base position [default: 1]'
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: "1-indexed inlcuded end base position [default:\nreference length]"
  type: long?
  inputBinding:
    prefix: --end
- id: in_paths
  doc: Maximum number of paths to generate [default:100]
  type: long?
  inputBinding:
    prefix: --paths
- id: in_master
  doc: "Master sequence (will be used to fill in homogeneous\ngaps in haplotypes,\
    \ otherwise --gapchar)"
  type: string?
  inputBinding:
    prefix: --master
- id: in_gap_char
  doc: Character to fill homogeneous gaps in haplotypes if no
  type: string?
  inputBinding:
    prefix: --gapchar
- id: in_del_char
  doc: "Character to output in haplotype for deletion (eg. -)\n[default is blank]"
  type: string?
  inputBinding:
    prefix: --delchar
- id: in_quiet
  doc: Don't output anything other than a single summary
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: Number of BAM iterators [default 1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_debug_reads
  doc: "A newline delimited list of read names to output debug\ndata when parsing\
    \ the BAM"
  type: string?
  inputBinding:
    prefix: --debugreads
- id: in_debug_pos
  doc: "A newline delimited list of 1-indexed genomic\npositions to output debug data\
    \ when parsing the BAM"
  type: long?
  inputBinding:
    prefix: --debugpos
- id: in_debug_hp_os
  doc: "A comma delimited list of 1-indexed SNP positions to\noutput debug data when\
    \ predicting haplotypes"
  type: long?
  inputBinding:
    prefix: --debughpos
- id: in_dump_matrix
  doc: Location to dump the Hansel matrix to disk
  type: string?
  inputBinding:
    prefix: --dumpmatrix
- id: in_dump_snps
  doc: Location to dump the SNP positions to disk
  type: string?
  inputBinding:
    prefix: --dumpsnps
- id: in_pepper
  doc: "enable a more permissive pileup by setting the pysam\npileup stepper to 'all',\
    \ instead of 'samtools'. Note\nthat this will allow improper pairs."
  type: boolean?
  inputBinding:
    prefix: --pepper
- id: in_bam
  doc: vcf
  type: string
  inputBinding:
    position: 0
- id: in_contig
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_line_dot
  doc: -o OUT, --out OUT     Output directory [default .]
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gretel
