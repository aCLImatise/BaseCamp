class: CommandLineTool
id: idxdepth.cwl
inputs:
- id: in_arg_bam_cram
  doc: '[ --bam ] arg                      BAM / CRAM input file'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_bam_index
  doc: "BAM / CRAM index file when not at\ndefault location."
  type: File?
  inputBinding:
    prefix: --bam-index
- id: in_arg_output_file
  doc: "[ --output ] arg                   Output file name. Will output to stdout\n\
    if omitted."
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_output_binned
  doc: '[ --output-bins ] arg              Output binned coverage in tsv format.'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_arg_fasta_reference
  doc: '[ --reference ] arg                FASTA with reference genome'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_alt_contig
  doc: (=0)                  Include ALT contigs in estimation
  type: long?
  inputBinding:
    prefix: --altcontig
- id: in_arg_regex_identify
  doc: '[ --include-regex ] arg            Regex to identify contigs to include'
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_auto_some_regex
  doc: "(=(chr)?[1-9][0-9]?)\nRegex to identify autosome chromosome\nnames (default:\
    \ '(chr)?[1-9][0-9]?'"
  type: long?
  inputBinding:
    prefix: --autosome-regex
- id: in_sex_chromosome_regex
  doc: "(=(chr)?[XY]?)\nRegex to identify sex chromosome names\n(default: '(chr)?[XY]?'"
  type: string?
  inputBinding:
    prefix: --sex-chromosome-regex
- id: in_threads
  doc: (=8)                    Number of threads to use for parallel
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Log to a file instead of stderr.
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_log_async
  doc: (=1)                  Enable / disable async logging.
  type: long?
  inputBinding:
    prefix: --log-async
- id: in_estimation_dot
  doc: --log-level arg (=info)               Set log level (error, warning, info).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: "[ --output ] arg                   Output file name. Will output to stdout\n\
    if omitted."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- idxdepth
