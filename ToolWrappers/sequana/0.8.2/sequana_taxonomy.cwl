class: CommandLineTool
id: sequana_taxonomy.cwl
inputs:
- id: in_homeuserconfigsequanakrakentoydb
  doc: /home/user/.config/sequana/kraken_toydb
  type: boolean?
  inputBinding:
    prefix: --databases
- id: in_file_one
  doc: R1 fastq file (zipped)
  type: File?
  inputBinding:
    prefix: --file1
- id: in_file_two
  doc: R2 fastq file (zipped)
  type: File?
  inputBinding:
    prefix: --file2
- id: in_output_directory
  doc: name of the output directory
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_keep_temp_files
  doc: keep temporary files (hierarchical case with several
  type: boolean?
  inputBinding:
    prefix: --keep-temp-files
- id: in_show_html
  doc: "Results are stored in report/ directory and results\nare not shown by default"
  type: boolean?
  inputBinding:
    prefix: --show-html
- id: in_download
  doc: "download an official sequana DB. The sequana_db1 is\nstored in a dedicated\
    \ Synapse page (www.synapse.org).\nminikraken is downloaded from the kraken's\
    \ author\npage, and toydb from sequana github."
  type: string?
  inputBinding:
    prefix: --download
- id: in_unclassified_out
  doc: save unclassified sequences to filename
  type: File?
  inputBinding:
    prefix: --unclassified-out
- id: in_classified_out
  doc: save unclassified sequences to filename
  type: File?
  inputBinding:
    prefix: --classified-out
- id: in__thread_number
  doc: --thread THREAD       number of threads to use (default 4)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: name of the output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- sequana_taxonomy
