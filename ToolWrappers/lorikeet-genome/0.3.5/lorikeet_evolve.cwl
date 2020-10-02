class: CommandLineTool
id: lorikeet_evolve.cwl
inputs:
- id: in_bam_files
  doc: "...\n--coupled <coupled>...\n--interleaved <interleaved>...\n-1 <read1>...\n\
    -2 <read2>...\n--reference <reference>\n--single <single>..."
  type: long
  inputBinding:
    prefix: --bam-files
- id: in_bam_file_cache_directory
  doc: ''
  type: File
  inputBinding:
    prefix: --bam-file-cache-directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lorikeet
- evolve
