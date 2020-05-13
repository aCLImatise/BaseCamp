class: CommandLineTool
id: anvi_script_get_short_reads_matching_something.cwl
inputs:
- id: fast_q_files
  doc: One or more FASTQ formatted files
  type: string
  inputBinding:
    position: 0
- id: min_remainder_length
  doc: Minimum lenght of the remainder of the read after the match. If your short
    read is XXXMMMMMMYYYYYYYYYYYYYY, where M indicates nucleotides of matchhing sequence,
    min remainder length is len(Y). Default is 60.
  type: long
  inputBinding:
    prefix: --min-remainder-length
- id: sample_name
  doc: A short sample name (use a single word without spaces or fancy chars)
  type: string
  inputBinding:
    prefix: --sample-name
- id: output_directory
  doc: Output directory for results to be stored. The default is the current working
    directory.
  type: File
  inputBinding:
    prefix: --output-directory
- id: report_raw
  doc: Just report them raw. Don't bother trimming.
  type: boolean
  inputBinding:
    prefix: --report-raw
- id: stop_after
  doc: Stop after X number of hits because who needs data.
  type: long
  inputBinding:
    prefix: --stop-after
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-get-short-reads-matching-something
