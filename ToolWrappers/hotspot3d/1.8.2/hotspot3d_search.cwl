class: CommandLineTool
id: hotspot3d_search.cwl
inputs:
- id: in_prep_dir
  doc: "HotSpot3D preprocessing results directory\nREQUIRE AT LEAST ONE"
  type: boolean
  inputBinding:
    prefix: --prep-dir
- id: in_maf_file
  doc: Input MAF file used to search proximity results
  type: boolean
  inputBinding:
    prefix: --maf-file
- id: in_site_file
  doc: "Protein site file (gene transcript position description)\nOPTIONAL"
  type: boolean
  inputBinding:
    prefix: --site-file
- id: in_drug_port_file
  doc: DrugPort database parsing results file
  type: boolean
  inputBinding:
    prefix: --drugport-file
- id: in_output_prefix
  doc: 'Prefix of output files, default: 3D_Proximity'
  type: boolean
  inputBinding:
    prefix: --output-prefix
- id: in_skip_silent
  doc: 'skip silent mutations, default: no'
  type: boolean
  inputBinding:
    prefix: --skip-silent
- id: in_missense_only
  doc: 'missense mutation only, default: no'
  type: boolean
  inputBinding:
    prefix: --missense-only
- id: in_p_value_cut_off
  doc: 'p_value cutoff(<=), default: 0.05'
  type: boolean
  inputBinding:
    prefix: --p-value-cutoff
- id: in_three_d_distance_cut_off
  doc: '3D distance cutoff (<=), default: 10'
  type: boolean
  inputBinding:
    prefix: --3d-distance-cutoff
- id: in_linear_cut_off
  doc: 'Linear distance cutoff (>= peptides), default: 0'
  type: boolean
  inputBinding:
    prefix: --linear-cutoff
- id: in_transcript_id_header
  doc: "MAF file column header for transcript id's, default: transcript_name"
  type: boolean
  inputBinding:
    prefix: --transcript-id-header
- id: in_amino_acid_header
  doc: 'MAF file column header for amino acid changes, default: amino_acid_change'
  type: boolean
  inputBinding:
    prefix: --amino-acid-header
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hotspot3d
- search
