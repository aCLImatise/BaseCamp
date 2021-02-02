class: CommandLineTool
id: ../../../mentalist_call.cwl
inputs:
- id: in_output_file_mlst
  doc: Output file with MLST call
  type: File
  inputBinding:
    prefix: -o
- id: in_db
  doc: Kmer database
  type: string
  inputBinding:
    prefix: --db
- id: in_mutation_threshold
  doc: "Maximum number of mutations when looking for\nnovel alleles. (type: Int64,\
    \ default: 6)"
  type: long
  inputBinding:
    prefix: --mutation_threshold
- id: in_kt
  doc: "Minimum # of times a kmer is seen to be\nconsidered present in the sample\
    \ (solid).\n(type: Int64, default: 10)"
  type: long
  inputBinding:
    prefix: --kt
- id: in_output_votes
  doc: Outputs the results for the original voting
  type: boolean
  inputBinding:
    prefix: --output_votes
- id: in_sample_input_file
  doc: "Input TXT file for multiple samples. First\ncolumn has the sample name, second\
    \ the FASTQ\nfile. Repeat the sample name for samples with\nmore than one file\
    \ (paired reads, f.i.)"
  type: File
  inputBinding:
    prefix: --sample_input_file
- id: in_fastq_sample_forwardreads
  doc: "[_1...]            FastQ input files, one per sample, forward\nreads (or unpaired\
    \ reads)."
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_fastq_input_reverse
  doc: '[_2...]            FastQ input files, one per sample, reverse'
  type: boolean
  inputBinding:
    prefix: '-2'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_mlst
  doc: Output file with MLST call
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_mlst)
cwlVersion: v1.1
baseCommand:
- mentalist
- call
