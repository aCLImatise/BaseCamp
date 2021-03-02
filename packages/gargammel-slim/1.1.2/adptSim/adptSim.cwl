class: CommandLineTool
id: adptSim.cwl
inputs:
- id: in_arts
  doc: '[out]           Output single-end reads as ART (unzipped fasta) (Default:
    /dev/null)'
  type: boolean?
  inputBinding:
    prefix: -arts
- id: in_art_p
  doc: "[out]           Output reads as ART (unzipped fasta) (Default: /dev/null)\n\
    with wrap-around for paired-end mode"
  type: boolean?
  inputBinding:
    prefix: -artp
- id: in_fr
  doc: '[out fwdr]      Output forward read as zipped fasta (Default: )'
  type: boolean?
  inputBinding:
    prefix: -fr
- id: in_rr
  doc: '[out rwdr]      Output reverse read as zipped fasta (Default: /dev/null)'
  type: boolean?
  inputBinding:
    prefix: -rr
- id: in_bs
  doc: '[BAM out]       Read BAM and write output as a single-end BAM (Default: fasta)'
  type: boolean?
  inputBinding:
    prefix: -bs
- id: in_bp
  doc: '[BAM out]       Read BAM and write output as a single-end BAM (Default: fasta)'
  type: boolean?
  inputBinding:
    prefix: -bp
- id: in_produce_uncompressed_bam
  doc: Produce uncompressed BAM (good for unix pipe)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_adapter_observed_forward
  doc: '[seq]                   Adapter that is observed after the forward read (Default:  AGATCGGAAG...)'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_adapter_observed_reverse
  doc: '[seq]                   Adapter that is observed after the reverse read (Default:  AGATCGGAAG...)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_desired_read_length
  doc: '[length]                Desired read length  (Default:  100)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_name
  doc: 'Append BAM tags or to deflines if adapters are added (Default:  not on/not
    used)'
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_append_string_default
  doc: '[tag]                   Append this string to deflines or BAM tags (Default:  not
    on/not used)'
  type: boolean?
  inputBinding:
    prefix: -tag
- id: in_append
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_13
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_length
  doc: ''
  type: long?
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_splits
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_19
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_adapter
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_desired
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_them
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_second
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_tags
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_31
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_string
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_two
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_observed
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_records
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_after
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_def_lines
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 5
- id: in_reverse
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_single_end
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_containing
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_if
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_read
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_a_dna
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_adapters
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_forward
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_fragments
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_added
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gargammel-slim:1.1.2--h68ad25a_0
cwlVersion: v1.1
baseCommand:
- adptSim
