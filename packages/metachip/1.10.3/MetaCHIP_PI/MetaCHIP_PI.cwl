class: CommandLineTool
id: MetaCHIP_PI.cwl
inputs:
- id: in_input_genome_folder
  doc: input genome folder
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_tax_on
  doc: taxonomic classification of input genomes
  type: string?
  inputBinding:
    prefix: -taxon
- id: in_output_prefix
  doc: output prefix
  type: string?
  inputBinding:
    prefix: -p
- id: in_grouping_rank_choose
  doc: "grouping rank, choose from p (phylum), c (class), o (order), f\n(family),\
    \ g (genus) or any combination of them"
  type: string?
  inputBinding:
    prefix: -r
- id: in_grouping_file
  doc: grouping file
  type: File?
  inputBinding:
    prefix: -g
- id: in_file_extension
  doc: file extension
  type: File?
  inputBinding:
    prefix: -x
- id: in_non_meta
  doc: provide if input genomes are NOT metagenome-assembled genomes
  type: boolean?
  inputBinding:
    prefix: -nonmeta
- id: in_number_threads_default
  doc: 'number of threads, default: 1'
  type: long?
  inputBinding:
    prefix: -t
- id: in_quiet
  doc: not report progress
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_force
  doc: force overwrite existing results
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_no_blast
  doc: "skip running all-vs-all blastn, provide if you have other ways\n(e.g. with\
    \ job scripts) to speed up the blastn step"
  type: boolean?
  inputBinding:
    prefix: -noblast
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- MetaCHIP
- PI
