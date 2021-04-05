class: CommandLineTool
id: medaka_haploid_variant.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_output_dir
  doc: "Output directory, should not exist. (default:\nmedaka_haploid_variant)"
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_threads
  doc: 'Number of threads used by inference. (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_batch_size
  doc: 'Inference batch size. (default: 100)'
  type: long?
  inputBinding:
    prefix: --batch_size
- id: in_chunk_len
  doc: 'Chunk length of samples. (default: 10000)'
  type: long?
  inputBinding:
    prefix: --chunk_len
- id: in_chunk_ovlp
  doc: 'Overlap of chunks. (default: 1000)'
  type: long?
  inputBinding:
    prefix: --chunk_ovlp
- id: in_model
  doc: "Model to use. {r103_min_high_g345, r103_min_high_g360,\nr103_prom_high_g360,\
    \ r103_prom_snp_g3210,\nr103_prom_variant_g3210, r10_min_high_g303,\nr10_min_high_g340,\
    \ r941_min_fast_g303,\nr941_min_high_g303, r941_min_high_g330,\nr941_min_high_g340_rle,\
    \ r941_min_high_g344,\nr941_min_high_g351, r941_min_high_g360,\nr941_prom_fast_g303,\
    \ r941_prom_high_g303,\nr941_prom_high_g330, r941_prom_high_g344,\nr941_prom_high_g360,\
    \ r941_prom_high_g4011,\nr941_prom_snp_g303, r941_prom_snp_g322,\nr941_prom_snp_g360,\
    \ r941_prom_variant_g303,\nr941_prom_variant_g322, r941_prom_variant_g360}\n(default:\
    \ r941_min_high_g360)"
  type: long?
  inputBinding:
    prefix: --model
- id: in_chunk_size
  doc: 'Size of consensus chunks (default: 100000)'
  type: long?
  inputBinding:
    prefix: --chunk_size
- id: in_pad
  doc: "Reference chunks are chunk_size + pad. (default:\n10000)"
  type: long?
  inputBinding:
    prefix: --pad
- id: in_mode
  doc: "Edlib alignment mode. NW: global in consensus and ref.\nHW: global in consensus,\
    \ local in ref. HWT: same as\nHW, but alignments trimmed to start and end on a\n\
    match. (default: HWT)\n"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_reads_fast_x
  doc: Input reads (can be gzipped).
  type: string
  inputBinding:
    position: 0
- id: in_ref_fast_a
  doc: Reference sequence .fasta file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory, should not exist. (default:\nmedaka_haploid_variant)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0
cwlVersion: v1.1
baseCommand:
- medaka_haploid_variant
