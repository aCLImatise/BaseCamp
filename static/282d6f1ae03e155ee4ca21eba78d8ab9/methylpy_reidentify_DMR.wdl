version 1.0

task MethylpyReidentifyDMR {
  input {
    File? output_file
    File? input_rms_file
    Array[String] collapse_samples
    Array[String] sample_category
    Int? min_cluster
    Float? sig_cut_off
    Int? dmr_max_dist
    Int? min_num_dms
    Float? resid_cut_off
    Int? num_sims
    Int? min_tests
  }
  command <<<
    methylpy reidentify_DMR \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(input_rms_file) then ("--input-rms-file " +  '"' + input_rms_file + '"') else ""} \
      ~{if defined(collapse_samples) then ("--collapse-samples " +  '"' + collapse_samples + '"') else ""} \
      ~{if defined(sample_category) then ("--sample-category " +  '"' + sample_category + '"') else ""} \
      ~{if defined(min_cluster) then ("--min-cluster " +  '"' + min_cluster + '"') else ""} \
      ~{if defined(sig_cut_off) then ("--sig-cutoff " +  '"' + sig_cut_off + '"') else ""} \
      ~{if defined(dmr_max_dist) then ("--dmr-max-dist " +  '"' + dmr_max_dist + '"') else ""} \
      ~{if defined(min_num_dms) then ("--min-num-dms " +  '"' + min_num_dms + '"') else ""} \
      ~{if defined(resid_cut_off) then ("--resid-cutoff " +  '"' + resid_cut_off + '"') else ""} \
      ~{if defined(num_sims) then ("--num-sims " +  '"' + num_sims + '"') else ""} \
      ~{if defined(min_tests) then ("--min-tests " +  '"' + min_tests + '"') else ""}
  >>>
  parameter_meta {
    output_file: "[--collapse-samples COLLAPSE_SAMPLES [COLLAPSE_SAMPLES ...]]\\n[--sample-category SAMPLE_CATEGORY [SAMPLE_CATEGORY ...]]\\n[--min-cluster MIN_CLUSTER]\\n[--sig-cutoff SIG_CUTOFF]\\n[--dmr-max-dist DMR_MAX_DIST]\\n[--min-num-dms MIN_NUM_DMS]\\n[--resid-cutoff RESID_CUTOFF]\\n[--num-sims NUM_SIMS] [--min-tests MIN_TESTS]"
    input_rms_file: "File storing the results of RMS tests (from DMRfind\\nfunction. (default: None)"
    collapse_samples: "A list of samples for collapsing blocks (default:\\nFalse)"
    sample_category: "A list of categories that each respective sample\\nbelongs to; the categories must begin at 0 and\\nincrease by 1 for each category added. ex: samples\\n[A,B,C] categories [0,1,2] or categories [0, 1, 0]\\n(default: False)"
    min_cluster: "The minimum number of each sample category that must\\nbe present in every block that is output. (default: 2)"
    sig_cut_off: "Float indicating at what FDR you want to consider a\\nresult significant. (default: 0.01)"
    dmr_max_dist: "Maximum distance two significant sites can be to be\\nincluded in the same block. (default: 250)"
    min_num_dms: "The minimum number of differentially methylated sites\\nthat a differentially methylated region needs to\\ncontain to be reported (default: 0)"
    resid_cut_off: "Results will have to show deviations in the\\ncontingency table in the same direction as the rest of\\nthe window (default: 0.01)"
    num_sims: "Number of permutation tests you would like to run to\\nestimate the p-values of the differential methylation\\ntests (default: 3000)"
    min_tests: "Minimum number of permuation tests you\\ would d like\\nto run for each mC (default: 100)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}