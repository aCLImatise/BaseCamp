class: CommandLineTool
id: medaka_consensus.cwl
inputs:
- id: in_fastx_input_basecalls
  doc: fastx input basecalls (required).
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_fasta_input_assembly
  doc: fasta input assembly (required).
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_output_folder_default
  doc: 'output folder (default: medaka).'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_output_vcf_slows
  doc: "output vcf of changes, and bed file of polished regions.\n(note that this\
    \ slows down consensus calculation)."
  type: File?
  inputBinding:
    prefix: -v
- id: in_medaka_model_default
  doc: "medaka model, (default: r941_min_high_g360).\nAvailable: r103_min_high_g345,\
    \ r103_min_high_g360, r103_prom_high_g360, r103_prom_snp_g3210, r103_prom_variant_g3210,\
    \ r10_min_high_g303, r10_min_high_g340, r941_min_fast_g303, r941_min_high_g303,\
    \ r941_min_high_g330, r941_min_high_g340_rle, r941_min_high_g344, r941_min_high_g351,\
    \ r941_min_high_g360, r941_prom_fast_g303, r941_prom_high_g303, r941_prom_high_g330,\
    \ r941_prom_high_g344, r941_prom_high_g360, r941_prom_snp_g303, r941_prom_snp_g322,\
    \ r941_prom_snp_g360, r941_prom_variant_g303, r941_prom_variant_g322, r941_prom_variant_g360.\n\
    Alternatively a .hdf file from 'medaka train'."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_force_overwrite_outputs
  doc: Force overwrite of outputs (default will reuse existing outputs).
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_number_threads_create
  doc: 'number of threads with which to create features (default: 1).'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_batchsize_controls_default
  doc: 'batchsize, controls memory use (default: 100).'
  type: boolean?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder_default
  doc: 'output folder (default: medaka).'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder_default)
- id: out_output_vcf_slows
  doc: "output vcf of changes, and bed file of polished regions.\n(note that this\
    \ slows down consensus calculation)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf_slows)
hints: []
cwlVersion: v1.1
baseCommand:
- medaka_consensus
