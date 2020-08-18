class: CommandLineTool
id: ../../../centrifuge_download.cwl
inputs:
- id: folder_files_downloaded
  doc: "Folder to which the files are downloaded. Default: '.'."
  type: Directory
  inputBinding:
    prefix: -o
- id: threads_number_processes
  doc: "<# of threads>      Number of processes when downloading (uses xargs). Default:\
    \ '1'"
  type: boolean
  inputBinding:
    prefix: -P
- id: domain_download_one
  doc: What domain to download. One or more of bacteria, viral, archaea, fungi, protozoa,
    invertebrate, plant, vertebrate_mammalian, vertebrate_other (comma separated).
  type: string
  inputBinding:
    prefix: -d
- id: only_download_genomes_default
  doc: "Only download genomes with the specified assembly level. Default: 'Complete\
    \ Genome'. Use 'Any' for any assembly level."
  type: string
  inputBinding:
    prefix: -a
- id: only_download_genomes_specified
  doc: 'Only download genomes in the specified refseq category. Default: any.'
  type: string
  inputBinding:
    prefix: -c
- id: only_download_specified
  doc: 'Only download the specified taxonomy IDs, comma separated. Default: any.'
  type: string
  inputBinding:
    prefix: -t
- id: download_using_curl
  doc: 'Download using program. Options: rsync, curl, wget. Default curl (auto-detected).'
  type: string
  inputBinding:
    prefix: -g
- id: download_rna_sequences
  doc: Download RNA sequences, too.
  type: boolean
  inputBinding:
    prefix: -r
- id: filter_unplaced_sequences
  doc: Filter unplaced sequences.
  type: boolean
  inputBinding:
    prefix: -u
- id: mask_lowcomplexity_regions
  doc: 'Mask low-complexity regions using dustmasker. Default: off.'
  type: boolean
  inputBinding:
    prefix: -m
- id: modify_header_include
  doc: 'Modify header to include taxonomy ID. Default: off.'
  type: boolean
  inputBinding:
    prefix: -l
- id: verbose_mode
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-download
