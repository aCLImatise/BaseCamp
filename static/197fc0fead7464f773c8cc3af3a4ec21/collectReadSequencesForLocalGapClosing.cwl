class: CommandLineTool
id: collectReadSequencesForLocalGapClosing.cwl
inputs:
- id: cmdline_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: faux_reads_file
  doc: '*Name of the faux reads file'
  type: File
  inputBinding:
    prefix: --faux-reads-file
- id: faux_read_matches_to_kunis_file
  doc: '*Name of the file with matches from faux reads to k-unitigs'
  type: File
  inputBinding:
    prefix: --faux-read-matches-to-kunis-file
- id: read_matches_to_kunis_file
  doc: '*Name of the file with matches from reads to k-unitigs'
  type: File
  inputBinding:
    prefix: --read-matches-to-kunis-file
- id: reads_file
  doc: Name of the reads file(s)
  type: File
  inputBinding:
    prefix: --reads-file
- id: dir_for_gaps
  doc: Directory to use for files we keep for local gap closing (.)
  type: File
  inputBinding:
    prefix: --dir-for-gaps
- id: num_joins_per_directory
  doc: Number of joins put in each directory (1)
  type: long
  inputBinding:
    prefix: --num-joins-per-directory
- id: max_reads_in_memory
  doc: Number of reads to hold in memory for gap closing bins (100000000)
  type: string
  inputBinding:
    prefix: --max-reads-in-memory
outputs: []
cwlVersion: v1.1
baseCommand:
- collectReadSequencesForLocalGapClosing
