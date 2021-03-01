version 1.0

task TomboFilterStuck {
  input {
    Array[Int] fast_five_based_irs
    Array[String] obs_per_base_filter
    Int? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter stuck \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    obs_per_base_filter: "Filter reads based on observations per base percentile\\nthresholds. Format thresholds as \\\"percentile:thresh\\n[pctl2:thresh2 ...]\\\". For example to filter reads with\\n99th pctl > 200 obs/base or max > 5k obs/base use\\n\\\"99:200 100:5000\\\"."
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}