version 1.0

task MethylpyReidentifyDMR {
  input {
    String? input_rms_file
    String? output_file
    Array[String] collapse_samples
    Array[String] sample_category
    Int? min_cluster
    String? sig_cut_off
    String? dmr_max_dist
    Int? min_num_dms
    String? resid_cut_off
    String? num_sims
    Int? min_tests
  }
  command <<<
    methylpy reidentify-DMR \
      ~{if defined(input_rms_file) then ("--input-rms-file " +  '"' + input_rms_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
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
    input_rms_file: "File storing the results of RMS tests (from DMRfind function. (default: None)"
    output_file: "String indicating the name of output file (default: None)"
    collapse_samples: "A list of samples for collapsing blocks (default: False)"
    sample_category: "A list of categories that each respective sample belongs to; the categories must begin at 0 and increase by 1 for each category added. ex: samples [A,B,C] categories [0,1,2] or categories [0, 1, 0] (default: False)"
    min_cluster: "The minimum number of each sample category that must be present in every block that is output. (default: 2)"
    sig_cut_off: "Float indicating at what FDR you want to consider a result significant. (default: 0.01)"
    dmr_max_dist: "Maximum distance two significant sites can be to be included in the same block. (default: 250)"
    min_num_dms: "The minimum number of differentially methylated sites that a differentially methylated region needs to contain to be reported (default: 0)"
    resid_cut_off: "Results will have to show deviations in the contingency table in the same direction as the rest of the window (default: 0.01)"
    num_sims: "Number of permutation tests you would like to run to estimate the p-values of the differential methylation tests (default: 3000)"
    min_tests: "Minimum number of permuation tests you\ would d like to run for each mC (default: 100)"
  }
}