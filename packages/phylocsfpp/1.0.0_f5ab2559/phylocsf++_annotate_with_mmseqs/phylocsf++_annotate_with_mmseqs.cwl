class: CommandLineTool
id: phylocsf++_annotate_with_mmseqs.cwl
inputs:
- id: in_threads
  doc: 'Parallelize scoring of multiple MSAs in a file. Default: 2'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: "Path where output GFF/GTF will be written to. If it does not\nexist, it will\
    \ be created. Default: output files are stored\nnext to the input files."
  type: File?
  inputBinding:
    prefix: --output
- id: in_strategy
  doc: "PhyloCSF scoring algorithm: MLE, FIXED, OMEGA or FIXED_MEAN.\nDefault: MLE"
  type: string?
  inputBinding:
    prefix: --strategy
- id: in_mm_seqs_bin
  doc: 'Path to MMseqs2 binary. Default: mmseqs'
  type: File?
  inputBinding:
    prefix: --mmseqs-bin
- id: in_genome_length
  doc: Total genome length (needed for --strategy FIXED_MEAN).
  type: long?
  inputBinding:
    prefix: --genome-length
- id: in_coding_exons
  doc: "BED-like file (chrom name, strand, phase, start, end) with\ncoordinates of\
    \ coding exons (needed for --strategy\nFIXED_MEAN)."
  type: File?
  inputBinding:
    prefix: --coding-exons
- id: in_mapping
  doc: "If the MSAs don't use common species names (like Human,\nChimp, etc.) you\
    \ can pass a two-column tsv file with a name\nmapping."
  type: File?
  inputBinding:
    prefix: --mapping
- id: in_model_info
  doc: "Output the organisms included in a specific model. Included\nmodels are: 21mosquitoes,\
    \ 58mammals, 7yeast, 29mammals,\n53birds, 49birds, 100vertebrates, 23flies, 12flies,\
    \ 26worms,\n20flies.\n"
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0
cwlVersion: v1.1
baseCommand:
- phylocsf++
- annotate-with-mmseqs
