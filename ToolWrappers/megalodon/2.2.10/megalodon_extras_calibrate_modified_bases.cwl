class: CommandLineTool
id: megalodon_extras_calibrate_modified_bases.cwl
inputs:
- id: in_ground_truth_ll_rs
  doc: "Ground truth log-likelihood ratio statistics (produced\nby `megalodon_extras\
    \ calibrate\ngenerate_modified_base_stats`). Default:\nmod_calibration_statistics.npz"
  type: string?
  inputBinding:
    prefix: --ground-truth-llrs
- id: in_max_input_llr
  doc: "Maximum log-likelihood ratio to compute calibration.\nDefault: 200"
  type: long?
  inputBinding:
    prefix: --max-input-llr
- id: in_num_calibration_values
  doc: "Number of discrete calibration values to compute.\nDefault: 5001"
  type: long?
  inputBinding:
    prefix: --num-calibration-values
- id: in_smooth_bandwidth
  doc: 'Smoothing bandwidth. Default: 0.800000'
  type: double?
  inputBinding:
    prefix: --smooth-bandwidth
- id: in_min_density
  doc: "Minimum density value to compute calibration. This\nvalue dynamically adjusts\
    \ [--max-input-llr] when it is\ntoo large. Default: 0.000000"
  type: long?
  inputBinding:
    prefix: --min-density
- id: in_diff_epsilon
  doc: "Epsilon to determine when the likelihood ratio has\nplateaued. Default: 0.000001"
  type: double?
  inputBinding:
    prefix: --diff-epsilon
- id: in_llr_clip_buffer
  doc: "Clipped buffer when determining range for computed\ncalibration log likelihood\
    \ ratios. Default: 1"
  type: long?
  inputBinding:
    prefix: --llr-clip-buffer
- id: in_out_filename
  doc: "Filename to output calibration values. Default:\nmegalodon_mod_calibration.npz"
  type: File?
  inputBinding:
    prefix: --out-filename
- id: in_out_pdf
  doc: "Output pdf filename for modified base calibration\nvisualization. Default:\
    \ Do not produce plot."
  type: File?
  inputBinding:
    prefix: --out-pdf
- id: in_pdf_prob_thresholds
  doc: "PDF_PROB_THRESHOLDS PDF_PROB_THRESHOLDS\nProbability thresholds to mark on\
    \ output pdf. Default:\n[0.75, 0.8, 0.85]"
  type: double?
  inputBinding:
    prefix: --pdf-prob-thresholds
- id: in_plot_without_prob_thresholds
  doc: Do not include probability thresholds in plot(s).
  type: boolean?
  inputBinding:
    prefix: --plot-without-prob-thresholds
- id: in_processes
  doc: "Number of processing cores to use for density\nsmoothing computation. Default:\
    \ 1"
  type: long?
  inputBinding:
    prefix: --processes
- id: in_overwrite
  doc: Overwrite --out-filename if it exists.
  type: File?
  inputBinding:
    prefix: --overwrite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "Filename to output calibration values. Default:\nmegalodon_mod_calibration.npz"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
- id: out_out_pdf
  doc: "Output pdf filename for modified base calibration\nvisualization. Default:\
    \ Do not produce plot."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_pdf)
- id: out_overwrite
  doc: Overwrite --out-filename if it exists.
  type: File?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- calibrate
- modified_bases
