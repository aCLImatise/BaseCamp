class: CommandLineTool
id: deepac_vir_gwpa_ntcontribs.cwl
inputs:
- id: in_model
  doc: Model file (.h5)
  type: File?
  inputBinding:
    prefix: --model
- id: in_dir_fragmented_genomes
  doc: Directory containing the fragmented genomes (.fasta)
  type: Directory?
  inputBinding:
    prefix: --dir-fragmented-genomes
- id: in_genomes_dir
  doc: Directory containing genomes (.genome)
  type: Directory?
  inputBinding:
    prefix: --genomes-dir
- id: in_out_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_ref_mode
  doc: Modus to calculate reference sequences
  type: string?
  inputBinding:
    prefix: --ref-mode
- id: in_train_data
  doc: "Train data (.npy), necessary to calculate reference\nsequences if ref_mode\
    \ is 'GC'"
  type: string?
  inputBinding:
    prefix: --train-data
- id: in_ref_seqs
  doc: "User provided reference sequences (.fasta) if ref_mode\nis 'own_ref_file'"
  type: string?
  inputBinding:
    prefix: --ref-seqs
- id: in_read_length
  doc: Fragment length
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_seq_chunk
  doc: Sequence chunk size. Decrease for lower memory usage.
  type: long?
  inputBinding:
    prefix: --seq-chunk
- id: in_gradient
  doc: Use Integrated Gradients instead of DeepLIFT.
  type: boolean?
  inputBinding:
    prefix: --gradient
- id: in_no_check
  doc: Disable additivity check.
  type: boolean?
  inputBinding:
    prefix: --no-check
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gwp_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_nt_contribs
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepacvir:0.2.2--py_0
cwlVersion: v1.1
baseCommand:
- deepac-vir
- gwpa
- ntcontribs
