class: CommandLineTool
id: megalodon_extras_calibrate_generate_modified_base_stats.cwl
inputs:
- id: in_control_megalodon_results_dir
  doc: "Megalodon output directory with modified base control\nsample."
  type: Directory?
  inputBinding:
    prefix: --control-megalodon-results-dir
- id: in_exclude_modified_bases
  doc: "Set of modified bases (single letter codes) to\nexclude."
  type: string[]
  inputBinding:
    prefix: --exclude-modified-bases
- id: in_modified_bases_set
  doc: "Only process these modified bases (single letter\ncodes)."
  type: string[]
  inputBinding:
    prefix: --modified-bases-set
- id: in_ground_truth_data
  doc: "Ground truth csv with (chrm, strand, pos, is_mod)\nvalues."
  type: string?
  inputBinding:
    prefix: --ground-truth-data
- id: in_strand_specific_sites
  doc: "Sites in --ground-truth-data are strand-specific. If\nnot set, strand is ignored."
  type: boolean?
  inputBinding:
    prefix: --strand-specific-sites
- id: in_out_filename
  doc: "Output filename for text summary. Default:\nmod_calibration_statistics.npz"
  type: File?
  inputBinding:
    prefix: --out-filename
- id: in_quiet
  doc: Suppress progress information.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_control_megalodon_results_dir
  doc: "Megalodon output directory with modified base control\nsample."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_control_megalodon_results_dir)
- id: out_out_filename
  doc: "Output filename for text summary. Default:\nmod_calibration_statistics.npz"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- calibrate
- generate_modified_base_stats
