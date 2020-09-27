class: CommandLineTool
id: purge_haplotigs_place.cwl
inputs:
- id: in_primary_primary_contigs
  doc: / -primary       Primary contigs fasta file
  type: boolean
  inputBinding:
    prefix: -p
- id: in_placement_file_name
  doc: / -out           Placement file name. DEFAULT = ncbi_placements.tsv
  type: File
  inputBinding:
    prefix: -o
- id: in_threads_threads_minimap
  doc: / -threads       Threads for Minimap2. DEFAULT = 4
  type: boolean
  inputBinding:
    prefix: -t
- id: in_coverage_coverage_cutoff
  doc: "/ -coverage      Coverage cutoff percentage for pairing contigs.\nDEFAULT\
    \ = 50 (%)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_falconnaming_rename_contigs
  doc: "/ -falconNaming  Rename contigs in the style used by FALCON Unzip. Saved\n\
    to <in-prefix>.FALC.fasta\n"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_placement_file_name
  doc: / -out           Placement file name. DEFAULT = ncbi_placements.tsv
  type: File
  outputBinding:
    glob: $(inputs.in_placement_file_name)
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- place
