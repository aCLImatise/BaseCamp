class: CommandLineTool
id: phylocsf++_score_msa.cwl
inputs:
- id: in_strategy
  doc: 'PhyloCSF scoring algorithm: MLE, FIXED or OMEGA. Default:'
  type: string?
  inputBinding:
    prefix: --strategy
- id: in_comp_anc
  doc: "Compute the ancestral sequence composition score (only in\nMLE and FIXED mode).\
    \ Default: 0"
  type: boolean?
  inputBinding:
    prefix: --comp-anc
- id: in_threads
  doc: 'Parallelize scoring of multiple MSAs in a file. Default: 2'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: "Path where tracks in wig format will be written. If it does\nnot exist, it\
    \ will be created. Default: output files are\nstored next to the input files."
  type: File?
  inputBinding:
    prefix: --output
- id: in_mapping
  doc: "If the MSAs don't use common species names (like Human,\nChimp, etc.) you\
    \ can pass a two-column tsv file with a name\nmapping."
  type: File?
  inputBinding:
    prefix: --mapping
- id: in_species
  doc: "Comma separated list of species to reduce <model> to a\nsubset of species\
    \ to improve running time, e.g.,\n\"Human,Chimp,Seaturtle\""
  type: string?
  inputBinding:
    prefix: --species
- id: in_genome_length
  doc: Total genome length (needed for --output-phylo).
  type: long?
  inputBinding:
    prefix: --genome-length
- id: in_coding_exons
  doc: "BED-like file (chrom name, strand, phase, start, end) with\ncoordinates of\
    \ coding exons (needed for --output-phylo)."
  type: File?
  inputBinding:
    prefix: --coding-exons
- id: in_model_info
  doc: "Output the organisms included in a specific model. Included\nmodels are: 21mosquitoes,\
    \ 58mammals, 7yeast, 29mammals,\n53birds, 49birds, 100vertebrates, 23flies, 12flies,\
    \ 26worms,\n20flies.\n"
  type: long?
  inputBinding:
    prefix: --model-info
- id: in_mle
  doc: '--comp-phylo BOOL      Compute the PhyloCSF score for each alignment. Default:
    1'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_coding_exons
  doc: "BED-like file (chrom name, strand, phase, start, end) with\ncoordinates of\
    \ coding exons (needed for --output-phylo)."
  type: File?
  outputBinding:
    glob: $(inputs.in_coding_exons)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0
cwlVersion: v1.1
baseCommand:
- phylocsf++
- score-msa
