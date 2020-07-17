version 1.0

task Yapc {
  input {
    String? smoothing_window_width
    String? smoothing_times
    Int? min_concave_region_width
    String? truncate_idr_input
    String? fixed_peak_halfwidth
    Boolean? pseudo_replicates
    Boolean? recycle
    String output_prefix
    String condition_rep_one_rep_two
  }
  command <<<
    yapc \
      ~{output_prefix} \
      ~{condition_rep_one_rep_two} \
      ~{if defined(smoothing_window_width) then ("--smoothing-window-width " +  '"' + smoothing_window_width + '"') else ""} \
      ~{if defined(smoothing_times) then ("--smoothing-times " +  '"' + smoothing_times + '"') else ""} \
      ~{if defined(min_concave_region_width) then ("--min-concave-region-width " +  '"' + min_concave_region_width + '"') else ""} \
      ~{if defined(truncate_idr_input) then ("--truncate-idr-input " +  '"' + truncate_idr_input + '"') else ""} \
      ~{if defined(fixed_peak_halfwidth) then ("--fixed-peak-halfwidth " +  '"' + fixed_peak_halfwidth + '"') else ""} \
      ~{true="--pseudoreplicates" false="" pseudo_replicates} \
      ~{true="--recycle" false="" recycle}
  >>>
  parameter_meta {
    smoothing_window_width: "Width of the smoothing window used for the second derivative track. If the peak calls aren't capturing the peak shape well, try setting this to different values ranging from 75 to 200. (default: 150)"
    smoothing_times: "Number of times smoothing is applied to the second derivative. (default: 3)"
    min_concave_region_width: "Discard concave regions smaller than the threshold specified. (default: 75)"
    truncate_idr_input: "Truncate IDR input to the number of peaks specified. (default: 100000)"
    fixed_peak_halfwidth: "Set final peak coordinates to the specified number of base pairs on either side of the concave region mode. (default: None)"
    pseudo_replicates: "Use pseudoreplicates as implemented in modENCODE (Landt et al 2012; around Fig 7): for each condition, assess peak reproducibility in replicates and pseudoreplicates; report globalIDRs for the set with a larger number of peak calls (at IDR=0.001). Pseudoreplicates are specified as the 3rd and 4th file name after every condition. (default: False)"
    recycle: "Do not recompute (intermediate) output files if a file with the expected name is already present. Enabling this can lead to funky behaviour e.g. in the case of a previously interrupted run. (default: False)"
    output_prefix: "Prefix to use for all output files"
    condition_rep_one_rep_two: "Name of the condition, BigWig files of first and second replicates; all separated by spaces. (default: None)"
  }
}