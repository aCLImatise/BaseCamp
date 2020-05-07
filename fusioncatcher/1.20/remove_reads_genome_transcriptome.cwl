class: CommandLineTool
id: remove_reads_genome_transcriptome.py.cwl
inputs:
- id: input_map_1
  doc: The input file in BOWTIE MAP format.
  type: string
  inputBinding:
    prefix: --input_map_1
- id: input_map_2
  doc: The input file in BOWTIE MAP format.
  type: string
  inputBinding:
    prefix: --input_map_2
- id: mismatches_column
  doc: The column number in the MAP file which contains the mismatches. Default is
    8.
  type: string
  inputBinding:
    prefix: --mismatches_column
- id: output
  doc: The output BOWTIE MAP file. It contains only the reads and their mappings as
    they appear in '--input_map_2' file except the reads which are found to have a
    larger number of mismatches in '--input_map_2' file compared to '--input_map_1'
    file.
  type: string
  inputBinding:
    prefix: --output
- id: tmp_dir
  doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  type: string
  inputBinding:
    prefix: --tmp_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_reads_genome_transcriptome.py
