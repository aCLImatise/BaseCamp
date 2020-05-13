class: CommandLineTool
id: idxdepth.cwl
inputs:
- id: b
  doc: '[ --bam ] arg                      BAM / CRAM input file'
  type: boolean
  inputBinding:
    prefix: -b
- id: bam_index
  doc: BAM / CRAM index file when not at  default location.
  type: string
  inputBinding:
    prefix: --bam-index
- id: o
  doc: '[ --output ] arg                   Output file name. Will output to stdout
    if omitted.'
  type: boolean
  inputBinding:
    prefix: -o
- id: o
  doc: '[ --output-bins ] arg              Output binned coverage in tsv format.'
  type: boolean
  inputBinding:
    prefix: -O
- id: r
  doc: '[ --reference ] arg                FASTA with reference genome'
  type: boolean
  inputBinding:
    prefix: -r
- id: alt_contig
  doc: (=0)                  Include ALT contigs in estimation
  type: string
  inputBinding:
    prefix: --altcontig
- id: i
  doc: '[ --include-regex ] arg            Regex to identify contigs to include'
  type: boolean
  inputBinding:
    prefix: -I
- id: auto_some_regex
  doc: "(=(chr)?[1-9][0-9]?) Regex to identify autosome chromosome  names (default:\
    \ '(chr)?[1-9][0-9]?'"
  type: string
  inputBinding:
    prefix: --autosome-regex
- id: sex_chromosome_regex
  doc: "(=(chr)?[XY]?) Regex to identify sex chromosome names  (default: '(chr)?[XY]?'"
  type: string
  inputBinding:
    prefix: --sex-chromosome-regex
- id: threads
  doc: (=8)                    Number of threads to use for parallel  estimation.
  type: string
  inputBinding:
    prefix: --threads
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
- idxdepth
