#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-get-short-reads-matching-something
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-get-short-reads-matching-something
inputs:
- doc: One or more FASTQ formatted files
  id: fast_q_files
  inputBinding:
    position: 0
  type: string
- doc: Minimum lenght of the remainder of the read after the match. If your short
    read is XXXMMMMMMYYYYYYYYYYYYYY, where M indicates nucleotides of matchhing sequence,
    min remainder length is len(Y). Default is 60.
  id: min_remainder_length
  inputBinding:
    prefix: --min-remainder-length
  type: long
- doc: A short sample name (use a single word without spaces or fancy chars)
  id: sample_name
  inputBinding:
    prefix: --sample-name
  type: string
- doc: Output directory for results to be stored. The default is the current working
    directory.
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: File
- doc: Just report them raw. Don't bother trimming.
  id: report_raw
  inputBinding:
    prefix: --report-raw
  type: boolean
- doc: Stop after X number of hits because who needs data.
  id: stop_after
  inputBinding:
    prefix: --stop-after
  type: long
