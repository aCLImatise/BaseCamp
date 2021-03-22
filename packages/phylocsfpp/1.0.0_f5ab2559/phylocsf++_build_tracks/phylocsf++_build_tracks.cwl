class: CommandLineTool
id: phylocsf++_build_tracks.cwl
inputs:
- id: in_output_phylo
  doc: "Compute all 6 smoothened PhyloCSF tracks. Requires coding\nexon coordinates\
    \ and genome length. Default: 0"
  type: boolean?
  inputBinding:
    prefix: --output-phylo
- id: in_output_raw_phylo
  doc: 'Compute all 6 unsmoothened PhyloCSF tracks. Default: 1'
  type: boolean?
  inputBinding:
    prefix: --output-raw-phylo
- id: in_power_threshold
  doc: "Minimum confidence score to output PhyloCSF score.\nDefault: 0.1"
  type: double?
  inputBinding:
    prefix: --power-threshold
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
- id: in_threads
  doc: "Parallelize scoring of multiple MSAs in a file using\nmultiple threads. Default:\
    \ 2"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: "Directory where tracks in wig format will be written to.\nIf it does not exist,\
    \ it will be created. Default: output\nfiles are stored next to the input files."
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_mapping
  doc: "If the MSAs don't use common species names (like Human,\nChimp, etc.) you\
    \ can pass a two-column tsv file with a\nname mapping."
  type: File?
  inputBinding:
    prefix: --mapping
- id: in_species
  doc: "Comma separated list of species to reduce <model> to a\nsubset of species\
    \ to improve running time, e.g.,\n\"Human,Chimp,Seaturtle\""
  type: string?
  inputBinding:
    prefix: --species
- id: in_model_info
  doc: "Output the organisms included in a specific model.\nIncluded models are: 21mosquitoes,\
    \ 58mammals, 7yeast,\n29mammals, 53birds, 49birds, 100vertebrates, 23flies,\n\
    12flies, 26worms, 20flies.\n"
  type: long?
  inputBinding:
    prefix: --model-info
- id: in_phylo_csf
  doc: ''
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
- build-tracks
