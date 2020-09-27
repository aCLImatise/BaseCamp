class: CommandLineTool
id: pam.cwl
inputs:
- id: in_arg_bam_file
  doc: '[ --bam ] arg                      Input BAM file for read extraction'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_arg_json_file
  doc: "[ --depth-spec ] arg               JSON file describing the regions for\n\
    depth extraction"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_output_file
  doc: "[ --output ] arg                   Output file name. Will output to stdout\n\
    if omitted."
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_commaseparated_list
  doc: "[ --target-regions ] arg           Comma-separated list of target regions,\n\
    e.g. chr1:1-20,chr2:2-40. This\noverrides the target regions in the\ndepth spec."
  type: boolean
  inputBinding:
    prefix: -T
- id: in_output_node_coverage
  doc: (=0)       Output coverage for nodes
  type: long
  inputBinding:
    prefix: --output-node-coverage
- id: in_arg_output_alignments_readlarge
  doc: "[ --output-alignments ] arg (=0)   Output alignments for every read\n(large)."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_output_alignments_read
  doc: "[ --output-filtered-alignments ] arg (=0)\nOutput alignments for every read\
    \ even\nwhen it was filtered (larger)."
  type: boolean
  inputBinding:
    prefix: -A
- id: in_arg_write_information
  doc: "[ --output-everything ] arg (=0)   Write all information we have into\nJSON.\
    \ (=enable all --output-* above)"
  type: boolean
  inputBinding:
    prefix: -E
- id: in_arg_maximum_number
  doc: "[ --max-reads-per-event ] arg (=10000)\nMaximum number of reads to process\
    \ for\na single event."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_arg_fasta_reference
  doc: '[ --reference ] arg                FASTA with reference genome'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_log_level
  doc: (=info)               Set log level (error, warning, info).
  type: string
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: Log to a file instead of stderr.
  type: File
  inputBinding:
    prefix: --log-file
- id: in_log_async
  doc: (=1)                  Enable / disable async logging.
  type: long
  inputBinding:
    prefix: --log-async
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: "[ --output ] arg                   Output file name. Will output to stdout\n\
    if omitted."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_output_file)
cwlVersion: v1.1
baseCommand:
- pam
