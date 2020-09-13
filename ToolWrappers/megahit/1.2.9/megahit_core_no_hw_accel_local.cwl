class: CommandLineTool
id: ../../../megahit_core_no_hw_accel_local.cwl
inputs:
- id: in_contig_file
  doc: contig file
  type: File
  inputBinding:
    prefix: --contig_file
- id: in_lib_file_prefix
  doc: lib file prefix
  type: File
  inputBinding:
    prefix: --lib_file_prefix
- id: in_km_in
  doc: (=11)
  type: long
  inputBinding:
    prefix: --kmin
- id: in_kmax
  doc: (=41)
  type: long
  inputBinding:
    prefix: --kmax
- id: in_step
  doc: (=6)
  type: long
  inputBinding:
    prefix: --step
- id: in_seed_km_er
  doc: (=31)              kmer size for seeding alignments
  type: long
  inputBinding:
    prefix: --seed_kmer
- id: in_min_contig_len
  doc: (=200)
  type: long
  inputBinding:
    prefix: --min_contig_len
- id: in_min_mapping_len
  doc: (=75)
  type: long
  inputBinding:
    prefix: --min_mapping_len
- id: in_sparsity
  doc: (=8)                sparsity of hash mapper
  type: long
  inputBinding:
    prefix: --sparsity
- id: in_similarity
  doc: (=0.8)            alignment similarity threshold
  type: double
  inputBinding:
    prefix: --similarity
- id: in_num_threads
  doc: (=0)
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    prefix: --output_file
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_local
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- megahit_core_no_hw_accel
- local
