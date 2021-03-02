version 1.0

task Yapc {
  input {
    Int? smoothing_window_width
    Int? smoothing_times
    Int? min_concave_region_width
    Int? truncate_idr_input
    Int? fixed_peak_halfwidth
    Boolean? pseudo_replicates
    File? recycle
    String output_prefix
    Int condition_rep_one_rep_two
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
      ~{if (pseudo_replicates) then "--pseudoreplicates" else ""} \
      ~{if (recycle) then "--recycle" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    smoothing_window_width: "Width of the smoothing window used for the second\\nderivative track. If the peak calls aren't capturing\\nthe peak shape well, try setting this to different\\nvalues ranging from 75 to 200. (default: 150)"
    smoothing_times: "Number of times smoothing is applied to the second\\nderivative. (default: 3)"
    min_concave_region_width: "Discard concave regions smaller than the threshold\\nspecified. (default: 75)"
    truncate_idr_input: "Truncate IDR input to the number of peaks specified.\\n(default: 100000)"
    fixed_peak_halfwidth: "Set final peak coordinates to the specified number of\\nbase pairs on either side of the concave region mode.\\n(default: None)"
    pseudo_replicates: "Use pseudoreplicates as implemented in modENCODE\\n(Landt et al 2012; around Fig 7): for each condition,\\nassess peak reproducibility in replicates and\\npseudoreplicates; report globalIDRs for the set with a\\nlarger number of peak calls (at IDR=0.001).\\nPseudoreplicates are specified as the 3rd and 4th file\\nname after every condition. (default: False)"
    recycle: "Do not recompute (intermediate) output files if a file\\nwith the expected name is already present. Enabling\\nthis can lead to funky behaviour e.g. in the case of a\\npreviously interrupted run. (default: False)\\n"
    output_prefix: "Prefix to use for all output files"
    condition_rep_one_rep_two: "Name of the condition, BigWig files of first and\\nsecond replicates; all separated by spaces. (default:\\nNone)"
  }
  output {
    File out_stdout = stdout()
    File out_recycle = "${in_recycle}"
  }
}