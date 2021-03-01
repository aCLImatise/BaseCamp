class: CommandLineTool
id: homopolish_polish.cwl
inputs:
- id: in_model_path
  doc: "[REQUIRED] Path to a trained model (pkl file). Please\nsee our github page\
    \ to see options."
  type: File?
  inputBinding:
    prefix: --model_path
- id: in_assembly
  doc: '[REQUIRED] Path to a assembly genome.'
  type: File?
  inputBinding:
    prefix: --assembly
- id: in_sketch_path
  doc: Path to a mash sketch file.
  type: File?
  inputBinding:
    prefix: --sketch_path
- id: in_genus
  doc: Genus name
  type: string?
  inputBinding:
    prefix: --genus
- id: in_threads
  doc: Number of threads to use. [1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output_dir
  doc: Path to the output directory. [output]
  type: File?
  inputBinding:
    prefix: --output_dir
- id: in_mash_threshold
  doc: Mash output threshold. [0.95]
  type: double?
  inputBinding:
    prefix: --mash_threshold
- id: in_download_contig_nums
  doc: How much contig to download from NCBI. [20]
  type: long?
  inputBinding:
    prefix: --download_contig_nums
- id: in_debug
  doc: "Keep the information of every contig after mash, such\nas homologous sequences\
    \ and its identity infomation.\n[no]"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_mash_screen
  doc: Use mash screen. [mash dist]
  type: boolean?
  inputBinding:
    prefix: --mash_screen
- id: in_meta
  doc: Your assembly genome is metagenome. [no]
  type: boolean?
  inputBinding:
    prefix: --meta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Path to the output directory. [output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/homopolish:0.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- homopolish
- polish
