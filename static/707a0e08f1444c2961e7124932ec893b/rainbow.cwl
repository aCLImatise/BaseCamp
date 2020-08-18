class: CommandLineTool
id: ../../../rainbow.cwl
inputs:
- id: input_fastafastq_file_supports_multiple
  doc: Input fasta/fastq file, supports multiple '-1'
  type: string
  inputBinding:
    prefix: '-1'
- id: input_fastafastq_file_supports_multiple_
  doc: Input fasta/fastq file, supports multiple '-2' [null]
  type: string
  inputBinding:
    prefix: '-2'
- id: read_default_variable
  doc: 'Read length, default: 0 variable'
  type: long
  inputBinding:
    prefix: -l
- id: maximum_mismatches
  doc: Maximum mismatches [4]
  type: long
  inputBinding:
    prefix: -m
- id: exactly_matching_threshold
  doc: Exactly matching threshold [2000]
  type: long
  inputBinding:
    prefix: -e
- id: low_level_polymorphism
  doc: Low level of polymorphism
  type: boolean
  inputBinding:
    prefix: -L
- id: input_rbasm_output
  doc: Input rbasm output file [stdin]
  type: string
  inputBinding:
    prefix: -i
- id: output_assembly
  doc: output assembly
  type: boolean
  inputBinding:
    prefix: -a
- id: output_file_line
  doc: Output file for merged contigs, one line per cluster [stdout]
  type: string
  inputBinding:
    prefix: -o
- id: maximum_number_merge
  doc: Maximum number of divided clusters to merge [300]
  type: long
  inputBinding:
    prefix: -N
- id: minimum_fraction_valid
  doc: Minimum fraction of similarity when assembly (valid only when '-a' is opened)
    [0.90]
  type: double
  inputBinding:
    prefix: -f
- id: minimum_number_opened
  doc: Minimum number of reads to assemble (valid only when '-a' is opened) [5]
  type: long
  inputBinding:
    prefix: -r
- id: maximum_number_opened
  doc: Maximum number of reads to assemble (valid only when '-a' is opened) [300]
  type: long
  inputBinding:
    prefix: -R
- id: cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rainbow
