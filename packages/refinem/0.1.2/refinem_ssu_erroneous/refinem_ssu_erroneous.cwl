class: CommandLineTool
id: refinem_ssu_erroneous.cwl
inputs:
- id: in_genome_ext
  doc: "extension of genomes (other files in directory are\nignored) (default: fna)"
  type: Directory?
  inputBinding:
    prefix: --genome_ext
- id: in_evalue
  doc: "e-value threshold for identifying and classifying 16S\nrRNA genes (default:\
    \ 1e-05)"
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_concatenate
  doc: "concatenate hits within the specified number of base\npairs (default: 200)"
  type: long?
  inputBinding:
    prefix: --concatenate
- id: in_common_tax_on
  doc: "threshold for defining a taxon as common (default:\n10.0)"
  type: double?
  inputBinding:
    prefix: --common_taxon
- id: in_ssu_min_len
  doc: "minimum length of SSU 16S gene fragment to consider\nfor classification (default:\
    \ 600)"
  type: long?
  inputBinding:
    prefix: --ssu_min_len
- id: in_ssu_domain
  doc: "percent identity threshold for accepting domain\nclassification of SSU (default:\
    \ 83.68)"
  type: double?
  inputBinding:
    prefix: --ssu_domain
- id: in_ssu_phylum
  doc: "percent identity threshold for accepting phylum\nclassification of SSU (default:\
    \ 86.35)"
  type: double?
  inputBinding:
    prefix: --ssu_phylum
- id: in_ssu_class
  doc: "percent identity threshold for accepting class\nclassification of SSU (default:\
    \ 89.2)"
  type: double?
  inputBinding:
    prefix: --ssu_class
- id: in_ssu_order
  doc: "percent identity threshold for accepting order\nclassification of SSU (default:\
    \ 92.25)"
  type: double?
  inputBinding:
    prefix: --ssu_order
- id: in_ssu_family
  doc: "percent identity threshold for accepting family\nclassification of SSU (default:\
    \ 96.4)"
  type: double?
  inputBinding:
    prefix: --ssu_family
- id: in_ssu_genus
  doc: "percent identity threshold for accepting genus\nclassification of SSU (default:\
    \ 98.7)"
  type: double?
  inputBinding:
    prefix: --ssu_genus
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_genome_nt_dir
  doc: directory containing nucleotide scaffolds for each
  type: string
  inputBinding:
    position: 0
- id: in_genome
  doc: taxon_profile_dir     directory with results of taxon_profile command
  type: string
  inputBinding:
    position: 1
- id: in_ssu_db
  doc: BLAST database of 16S rRNA genes
  type: string
  inputBinding:
    position: 2
- id: in_ssu_taxonomy_file
  doc: taxonomy file for genes in the 16S rRNA database
  type: string
  inputBinding:
    position: 3
- id: in_output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refinem:0.1.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- refinem
- ssu_erroneous
