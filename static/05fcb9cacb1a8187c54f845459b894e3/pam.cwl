class: CommandLineTool
id: pam.cwl
inputs:
- id: b
  doc: '[ --bam ] arg                      Input BAM file for read extraction'
  type: boolean
  inputBinding:
    prefix: -b
- id: g
  doc: '[ --depth-spec ] arg               JSON file describing the regions for  depth
    extraction'
  type: boolean
  inputBinding:
    prefix: -g
- id: o
  doc: '[ --output ] arg                   Output file name. Will output to stdout
    if omitted.'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '[ --target-regions ] arg           Comma-separated list of target regions,
    e.g. chr1:1-20,chr2:2-40. This  overrides the target regions in the  depth spec.'
  type: boolean
  inputBinding:
    prefix: -T
- id: output_node_coverage
  doc: (=0)       Output coverage for nodes
  type: string
  inputBinding:
    prefix: --output-node-coverage
- id: a
  doc: '[ --output-alignments ] arg (=0)   Output alignments for every read  (large).'
  type: boolean
  inputBinding:
    prefix: -a
- id: a
  doc: '[ --output-filtered-alignments ] arg (=0) Output alignments for every read
    even  when it was filtered (larger).'
  type: boolean
  inputBinding:
    prefix: -A
- id: e
  doc: '[ --output-everything ] arg (=0)   Write all information we have into  JSON.
    (=enable all --output-* above)'
  type: boolean
  inputBinding:
    prefix: -E
- id: m
  doc: '[ --max-reads-per-event ] arg (=10000) Maximum number of reads to process
    for  a single event.'
  type: boolean
  inputBinding:
    prefix: -M
- id: r
  doc: '[ --reference ] arg                FASTA with reference genome'
  type: boolean
  inputBinding:
    prefix: -r
- id: log_level
  doc: (=info)               Set log level (error, warning, info).
  type: string
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: Log to a file instead of stderr.
  type: string
  inputBinding:
    prefix: --log-file
- id: log_async
  doc: (=1)                  Enable / disable async logging.
  type: string
  inputBinding:
    prefix: --log-async
outputs: []
cwlVersion: v1.1
baseCommand:
- pam
