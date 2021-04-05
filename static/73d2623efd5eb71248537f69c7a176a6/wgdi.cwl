class: CommandLineTool
id: wgdi.cwl
inputs:
- id: in_show_homologous_dotplot
  doc: Show homologous gene dotplot
  type: string?
  inputBinding:
    prefix: -d
- id: in_icl
  doc: Improved version of ColinearScan
  type: string?
  inputBinding:
    prefix: -icl
- id: in_ks
  doc: Calculate Ka/Ks for homologous gene pairs by YN00
  type: long?
  inputBinding:
    prefix: -ks
- id: in_bk
  doc: Show Ks of blocks in a dotplot
  type: string?
  inputBinding:
    prefix: -bk
- id: in_bi
  doc: Collinearity and Ks speculate whole genome duplication
  type: string?
  inputBinding:
    prefix: -bi
- id: in_extract_eventrelated_genomic
  doc: Extract event-related genomic alignment
  type: string?
  inputBinding:
    prefix: -c
- id: in_kp
  doc: A simple way to get ks peaks
  type: string?
  inputBinding:
    prefix: -kp
- id: in_kf
  doc: A simple way to draw ks distribution map
  type: string?
  inputBinding:
    prefix: -kf
- id: in_pf
  doc: Gaussian fitting of ks distribution
  type: string?
  inputBinding:
    prefix: -pf
- id: in_pc
  doc: Polyploid distinguish among subgenomes
  type: string?
  inputBinding:
    prefix: -pc
- id: in_show_eventrelated_alignment
  doc: Show event-related genomic alignment in a dotplot
  type: string?
  inputBinding:
    prefix: -a
- id: in_at
  doc: Collinear genes construct phylogenetic trees
  type: string?
  inputBinding:
    prefix: -at
- id: in_polyploidyindex_characterize_degree
  doc: "Polyploidy-index characterize the degree of divergence\nbetween subgenomes\
    \ of a polyploidy"
  type: string?
  inputBinding:
    prefix: -p
- id: in_show_subgenomes_genome
  doc: Show subgenomes in gene retention or genome
  type: string?
  inputBinding:
    prefix: -r
- id: in_conf
  doc: Display and modify the environment variable
  type: string?
  inputBinding:
    prefix: -conf
- id: in_fractionation
  doc: -ci CIRCOS            A simple way to run circos
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wgdi:0.4.6--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- wgdi
