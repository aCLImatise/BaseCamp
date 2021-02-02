class: CommandLineTool
id: rascaf.cwl
inputs:
- id: in_required_path_coordinatesorted
  doc: '(required): the path to the coordinate-sorted alignment BAM file'
  type: File
  inputBinding:
    prefix: -b
- id: in_recommended_paths_used
  doc: '(recommended): the paths to the raw assembly fasta file(default: not used)'
  type: File
  inputBinding:
    prefix: -f
- id: in_prefix_output_file
  doc: ': prefix of the output file (default: rascaf)'
  type: File
  inputBinding:
    prefix: -o
- id: in_bc
  doc: ': the path to the alignment BAM file allowing clipping from non-spliced aligner
    (default: not used)'
  type: File
  inputBinding:
    prefix: -bc
- id: in_ms
  doc: ': minimum support for connecting two contigs(default: 2)'
  type: long
  inputBinding:
    prefix: -ms
- id: in_ml
  doc: ': minimum exonic length(default: 200)'
  type: long
  inputBinding:
    prefix: -ml
- id: in_break_n
  doc: ': the least number of Ns to break a scaffold in the raw assembly (default:
    1)'
  type: long
  inputBinding:
    prefix: -breakN
- id: in_size_you_want
  doc: ': the size of a kmer(<=32; <=0 if you do not want to use kmer. default: 23)'
  type: long
  inputBinding:
    prefix: -k
- id: in_cs
  doc: ': output the genomic sequence involved in connections in file $prefix_cs.fa
    (default: not used)'
  type: File
  inputBinding:
    prefix: -cs
- id: in_verbose_mode_default
  doc: ': verbose mode (default: false)'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix_output_file
  doc: ': prefix of the output file (default: rascaf)'
  type: File
  outputBinding:
    glob: $(inputs.in_prefix_output_file)
- id: out_cs
  doc: ': output the genomic sequence involved in connections in file $prefix_cs.fa
    (default: not used)'
  type: File
  outputBinding:
    glob: $(inputs.in_cs)
cwlVersion: v1.1
baseCommand:
- rascaf
