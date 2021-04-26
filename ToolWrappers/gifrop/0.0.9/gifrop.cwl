class: CommandLineTool
id: gifrop.cwl
inputs:
- id: in_threads
  doc: Number of threads to use for parallel abricate commands
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_no_plots
  doc: Don't generate plots
  type: boolean?
  inputBinding:
    prefix: --no_plots
- id: in_min_genes
  doc: Only return islands with greater than this many genes (4)
  type: boolean?
  inputBinding:
    prefix: --min_genes
- id: in_flank_dna
  doc: output this many bases of DNA on either side of each island (0)
  type: boolean?
  inputBinding:
    prefix: --flank_dna
- id: in_reference
  doc: Find genomic islands relative to this reference
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_get_islands
  doc: Run the main program to extract genomic islands
  type: boolean?
  inputBinding:
    prefix: --get_islands
- id: in_split_islands
  doc: Write one fasta file for each genomic island
  type: boolean?
  inputBinding:
    prefix: --split_islands
- id: in_s_cut
  doc: prune edges with OC less than scut before secondary cluster (.5)
  type: boolean?
  inputBinding:
    prefix: --scut
- id: in_t_cut
  doc: prune edges with OC less than tcut before tertiary cluster (.75)
  type: boolean?
  inputBinding:
    prefix: --tcut
- id: in_q_cut
  doc: prune edges with jaccard sim less than qcut before quat cluster (.75)
  type: boolean?
  inputBinding:
    prefix: --qcut
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- gifrop
