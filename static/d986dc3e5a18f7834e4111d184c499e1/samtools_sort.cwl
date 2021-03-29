class: CommandLineTool
id: samtools_sort.cwl
inputs:
- id: in_set_compression_level
  doc: Set compression level, from 0 (uncompressed) to 9 (best)
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_uncompressed_data
  doc: Output uncompressed data (equivalent to -l 0)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_set_maximum_memory
  doc: Set maximum memory per thread; suffix K/M/G recognized [768M]
  type: long?
  inputBinding:
    prefix: -m
- id: in_use_minimiser_clustering
  doc: Use minimiser for clustering unaligned/unplaced reads
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_kmer_size_use
  doc: Kmer size to use for minimiser [20]
  type: long?
  inputBinding:
    prefix: -K
- id: in_sort_read_name
  doc: Sort by read name (not compatible with samtools index command)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_sort_value_tag
  doc: Sort by value of TAG. Uses position as secondary index (or read name if -n
    is set)
  type: string?
  inputBinding:
    prefix: -t
- id: in_write_final_output
  doc: Write final output to FILE rather than standard output
  type: File?
  inputBinding:
    prefix: -o
- id: in_write_temporary_files
  doc: Write temporary files to PREFIX.nnnn.bam
  type: string?
  inputBinding:
    prefix: -T
- id: in_no_pg
  doc: do not add a PG line
  type: boolean?
  inputBinding:
    prefix: --no-PG
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --output-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_write_index
  doc: Automatically index the output files [off]
  type: boolean?
  inputBinding:
    prefix: --write-index
- id: in_verbosity
  doc: "Set level of verbosity\n"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_in_dot_bam
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_final_output
  doc: Write final output to FILE rather than standard output
  type: File?
  outputBinding:
    glob: $(inputs.in_write_final_output)
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.12--hd5e65b6_0
cwlVersion: v1.1
baseCommand:
- samtools
- sort
