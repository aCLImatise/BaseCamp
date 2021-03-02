class: CommandLineTool
id: damageprofiler.cwl
inputs:
- id: in_required_sambamcram_file
  doc: REQUIRED. The input sam/bam/cram file.
  type: File?
  inputBinding:
    prefix: -i
- id: in_required_output_folder
  doc: REQUIRED. The output folder.
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_reference_file_fasta
  doc: The reference file (fasta format).
  type: File?
  inputBinding:
    prefix: -r
- id: in_damageplot_number_bases
  doc: "DamagePlot: Number of bases which are considered for plotting nucleotide misincorporations.\n\
    Default: 25"
  type: long?
  inputBinding:
    prefix: -t
- id: in_reference_sequence_name
  doc: Reference sequence name (Reference NAME flag of SAM record). For more details
    see
  type: string?
  inputBinding:
    prefix: -s
- id: in_title
  doc: 'Title used for all plots. Default: input filename.'
  type: File?
  inputBinding:
    prefix: -title
- id: in_yaxis_dp_max
  doc: 'DamagePlot: Maximal y-axis value.'
  type: string?
  inputBinding:
    prefix: -yaxis_dp_max
- id: in_color_c_t
  doc: 'DamagePlot: Color (HEX code) for C to T misincoporation frequency.'
  type: string?
  inputBinding:
    prefix: -color_c_t
- id: in_color_g_a
  doc: 'DamagePlot: Color (HEX code) for G to A misincoporation frequency.'
  type: string?
  inputBinding:
    prefix: -color_g_a
- id: in_color_insertions
  doc: 'DamagePlot: Color (HEX code) for base insertions.'
  type: string?
  inputBinding:
    prefix: -color_insertions
- id: in_color_deletions
  doc: 'DamagePlot: Color (HEX code) for base deletions.'
  type: string?
  inputBinding:
    prefix: -color_deletions
- id: in_color_other
  doc: 'DamagePlot: Color (HEX code) for other bases different to reference.'
  type: string?
  inputBinding:
    prefix: -color_other
- id: in_only_merged
  doc: "Use only mapped and merged (in case of paired-end sequencing) reads to calculate\
    \ the damage\nplot instead of using all mapped reads. The SAM/BAM entry must start\
    \ with 'M_', otherwise it\nwill be skipped. Default: false"
  type: boolean?
  inputBinding:
    prefix: -only_merged
- id: in_ss_lib
  doc: 'Single-stranded library protocol was used. Default: false'
  type: boolean?
  inputBinding:
    prefix: -sslib
- id: in_sf
  doc: ''
  type: File?
  inputBinding:
    prefix: -sf
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_required_output_folder
  doc: REQUIRED. The output folder.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_required_output_folder)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/damageprofiler:1.1--0
cwlVersion: v1.1
baseCommand:
- damageprofiler
