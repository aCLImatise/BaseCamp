version 1.0

task TomboFilterStuck {
  input {
    Array[Int] fast_five_based_irs
    Array[String] obs_per_base_filter
    Int? corrected_group
    Boolean? quiet
  }
  command <<<
    tombo filter_stuck \
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
    obs_per_base_filter: "Filter reads baseed on observations per base\\npercentile thresholds. Format thresholds as\\n\\\"percentile:thresh [pctl2:thresh2 ...]\\\". For example\\nto filter reads with 99th pctl > 200 obs/base or max >\\n5k obs/base use \\\"99:200 100:5000\\\"."
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}