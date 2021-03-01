class: CommandLineTool
id: rainbow.cwl
inputs:
- id: in_input_fastafastq_file_supports_multiple
  doc: Input fasta/fastq file, supports multiple '-1'
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_input_fastafastq_file_supports_multiple_
  doc: Input fasta/fastq file, supports multiple '-2' [null]
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_read_length_default
  doc: 'Read length, default: 0 variable'
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximum_mismatches
  doc: Maximum mismatches [4]
  type: long?
  inputBinding:
    prefix: -m
- id: in_exactly_matching_threshold
  doc: Exactly matching threshold [2000]
  type: long?
  inputBinding:
    prefix: -e
- id: in_low_level_polymorphism
  doc: Low level of polymorphism
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_input_file
  doc: Input file [stdin]
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file
  doc: Output file [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_kallele_min_variants
  doc: K_allele, min variants to create a new group [2]
  type: long?
  inputBinding:
    prefix: -k
- id: in_kallele_divide_regardless
  doc: K_allele, divide regardless of frequency when num of variants exceed this value
    [50]
  type: long?
  inputBinding:
    prefix: -K
- id: in_frequency_min_variant
  doc: Frequency, min variant frequency to create a new group [0.2]
  type: double?
  inputBinding:
    prefix: -f
- id: in_output_assembly
  doc: output assembly
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_maximum_number_divided
  doc: Maximum number of divided clusters to merge [300]
  type: long?
  inputBinding:
    prefix: -N
- id: in_minimum_number_reads
  doc: Minimum number of reads to assemble (valid only when '-a' is opened) [5]
  type: long?
  inputBinding:
    prefix: -r
- id: in_maximum_number_reads
  doc: Maximum number of reads to assemble (valid only when '-a' is opened) [300]
  type: long?
  inputBinding:
    prefix: -R
- id: in_merge
  doc: 'Input File Format: <seqid:int>\t<cluster_id:int>\t<read1:string>\t<read2:string>[\t<pre_cluster_id:int>]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rainbow
