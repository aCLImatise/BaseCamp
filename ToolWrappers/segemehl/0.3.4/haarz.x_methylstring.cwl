class: CommandLineTool
id: haarz.x_methylstring.cwl
inputs:
- id: in_database
  doc: '[<file>]         list of path/filename(s) of fasta database sequence(s) (default:none)'
  type: File?
  inputBinding:
    prefix: --database
- id: in_bam
  doc: path/filename of sorted and indexed (!) bamfile (default:none)
  type: File?
  inputBinding:
    prefix: --bam
- id: in_annotation_files
  doc: '[<file>]  list of path/filename(s) of BED or GFF file (s))'
  type: File?
  inputBinding:
    prefix: --annotationfiles
- id: in_attributes
  doc: attributes that shall be selected for overlap annotation
  type: string?
  inputBinding:
    prefix: --attributes
- id: in_offsets
  doc: offsets for the annotation
  type: string?
  inputBinding:
    prefix: --offsets
- id: in_output
  doc: path/filename of output file (will be sorted) (default:none)
  type: File?
  inputBinding:
    prefix: --output
- id: in_unique_only
  doc: generate a bam output (-o <filename> required)
  type: File?
  inputBinding:
    prefix: --uniqueonly
- id: in_threads
  doc: start <n> threads (default:10)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_haar_z_do_tx
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path/filename of output file (will be sorted) (default:none)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_unique_only
  doc: generate a bam output (-o <filename> required)
  type: File?
  outputBinding:
    glob: $(inputs.in_unique_only)
hints: []
cwlVersion: v1.1
baseCommand:
- haarz.x
- methylstring
