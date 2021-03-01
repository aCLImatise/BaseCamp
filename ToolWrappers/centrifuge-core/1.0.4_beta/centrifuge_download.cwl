class: CommandLineTool
id: centrifuge_download.cwl
inputs:
- id: in_folder_files_downloaded
  doc: "Folder to which the files are downloaded. Default: '.'."
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_threads_number_processes
  doc: "<# of threads>      Number of processes when downloading (uses xargs). Default:\
    \ '1'"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_domain_download_one
  doc: What domain to download. One or more of bacteria, viral, archaea, fungi, protozoa,
    invertebrate, plant, vertebrate_mammalian, vertebrate_other (comma separated).
  type: string?
  inputBinding:
    prefix: -d
- id: in_only_download_genomes_specified_assembly
  doc: "Only download genomes with the specified assembly level. Default: 'Complete\
    \ Genome'. Use 'Any' for any assembly level."
  type: string?
  inputBinding:
    prefix: -a
- id: in_only_download_genomes_specified_refseq
  doc: 'Only download genomes in the specified refseq category. Default: any.'
  type: string?
  inputBinding:
    prefix: -c
- id: in_only_download_separated
  doc: 'Only download the specified taxonomy IDs, comma separated. Default: any.'
  type: string?
  inputBinding:
    prefix: -t
- id: in_download_using_wget
  doc: 'Download using program. Options: rsync, curl, wget. Default wget (auto-detected).'
  type: string?
  inputBinding:
    prefix: -g
- id: in_download_rna_sequences
  doc: Download RNA sequences, too.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_filter_unplaced_sequences
  doc: Filter unplaced sequences.
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_mask_lowcomplexity_regions
  doc: 'Mask low-complexity regions using dustmasker. Default: off.'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_modify_header_include
  doc: 'Modify header to include taxonomy ID. Default: off.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_verbose_mode
  doc: Verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0
cwlVersion: v1.1
baseCommand:
- centrifuge-download
