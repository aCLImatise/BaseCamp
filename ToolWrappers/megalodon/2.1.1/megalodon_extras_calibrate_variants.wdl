version 1.0

task MegalodonExtrasCalibrateVariants {
  input {
    String? ground_truth_ll_rs
    Int? max_input_llr
    Int? num_calibration_values
    Float? smooth_bandwidth
    Int? min_density
    Float? diff_epsilon
    Int? llr_clip_buffer
    Int? processes
    File? out_filename
    File? out_pdf
    File? overwrite
  }
  command <<<
    megalodon_extras calibrate variants \
      ~{if defined(ground_truth_ll_rs) then ("--ground-truth-llrs " +  '"' + ground_truth_ll_rs + '"') else ""} \
      ~{if defined(max_input_llr) then ("--max-input-llr " +  '"' + max_input_llr + '"') else ""} \
      ~{if defined(num_calibration_values) then ("--num-calibration-values " +  '"' + num_calibration_values + '"') else ""} \
      ~{if defined(smooth_bandwidth) then ("--smooth-bandwidth " +  '"' + smooth_bandwidth + '"') else ""} \
      ~{if defined(min_density) then ("--min-density " +  '"' + min_density + '"') else ""} \
      ~{if defined(diff_epsilon) then ("--diff-epsilon " +  '"' + diff_epsilon + '"') else ""} \
      ~{if defined(llr_clip_buffer) then ("--llr-clip-buffer " +  '"' + llr_clip_buffer + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""} \
      ~{if defined(out_pdf) then ("--out-pdf " +  '"' + out_pdf + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ground_truth_ll_rs: "Ground truth log-likelihood ratio statistics (produced\\nby `megalodon_extras calibrate\\ngenerate_variant_stats`). Default:\\nvariant_calibration_statistics.txt"
    max_input_llr: "Maximum log-likelihood ratio to compute calibration.\\nDefault: 200"
    num_calibration_values: "Number of discrete calibration values to compute.\\nDefault: 5001"
    smooth_bandwidth: "Smoothing bandwidth. Default: 0.800000"
    min_density: "Minimum density value to compute calibration. This\\nvalue dynamically adjusts [--max-input-llr] when it is\\ntoo large. Default: 0.000000"
    diff_epsilon: "Epsilon to determine when the likelihood ratio has\\nplateaued. Default: 0.000001"
    llr_clip_buffer: "Clipped buffer when determining range for computed\\ncalibration log likelihood ratios. Default: 1"
    processes: "Number of processing cores to use for density\\nsmoothing computation. Default: 1"
    out_filename: "Filename to output calibration values. Default:\\nmegalodon_variant_calibration.npz"
    out_pdf: "Output pdf filename for modified base calibration\\nvisualization. Default: Do not produce plot."
    overwrite: "Overwrite --out-filename if it exists."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
    File out_out_pdf = "${in_out_pdf}"
    File out_overwrite = "${in_overwrite}"
  }
}