#!/usr/bin/env cwl-runner

baseCommand:
- remove_reads_genome_transcriptome.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_reads_genome_transcriptome.py
inputs:
- doc: The input file in BOWTIE MAP format.
  id: input_map_1
  inputBinding:
    prefix: --input_map_1
  type: string
- doc: The input file in BOWTIE MAP format.
  id: input_map_2
  inputBinding:
    prefix: --input_map_2
  type: string
- doc: The column number in the MAP file which contains the mismatches. Default is
    8.
  id: mismatches_column
  inputBinding:
    prefix: --mismatches_column
  type: string
- doc: The output BOWTIE MAP file. It contains only the reads and their mappings as
    they appear in '--input_map_2' file except the reads which are found to have a
    larger number of mismatches in '--input_map_2' file compared to '--input_map_1'
    file.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  id: tmp_dir
  inputBinding:
    prefix: --tmp_dir
  type: string
