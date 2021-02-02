version 1.0

task Pbsim {
  input {
    Boolean? prefix
    Boolean? data_type
    Boolean? depth
    Boolean? length_min
    Boolean? length_max
    Boolean? accuracy_min
    Boolean? accuracy_max
    Boolean? difference_ratio
    Boolean? seed
    Boolean? sample_fast_q
    Boolean? sample_profile_id
    Boolean? model_qc
    Boolean? length_mean
    Boolean? length_sd
    Boolean? accuracy_mean
    Boolean? accuracy_sd
    String reference
  }
  command <<<
    pbsim \
      ~{reference} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (data_type) then "--data-type" else ""} \
      ~{if (depth) then "--depth" else ""} \
      ~{if (length_min) then "--length-min" else ""} \
      ~{if (length_max) then "--length-max" else ""} \
      ~{if (accuracy_min) then "--accuracy-min" else ""} \
      ~{if (accuracy_max) then "--accuracy-max" else ""} \
      ~{if (difference_ratio) then "--difference-ratio" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (sample_fast_q) then "--sample-fastq" else ""} \
      ~{if (sample_profile_id) then "--sample-profile-id" else ""} \
      ~{if (model_qc) then "--model_qc" else ""} \
      ~{if (length_mean) then "--length-mean" else ""} \
      ~{if (length_sd) then "--length-sd" else ""} \
      ~{if (accuracy_mean) then "--accuracy-mean" else ""} \
      ~{if (accuracy_sd) then "--accuracy-sd" else ""}
  >>>
  parameter_meta {
    prefix: "prefix of output files (sd)."
    data_type: "data type. CLR or CCS (CLR)."
    depth: "depth of coverage (CLR: 20.0, CCS: 50.0)."
    length_min: "minimum length (100)."
    length_max: "maximum length (CLR: 25000, CCS: 2500)."
    accuracy_min: "minimum accuracy.\\n(CLR: 0.75, CCS: fixed as 0.75).\\nthis option can be used only in case of CLR."
    accuracy_max: "maximum accuracy.\\n(CLR: 1.00, CCS: fixed as 1.00).\\nthis option can be used only in case of CLR."
    difference_ratio: "ratio of differences. substitution:insertion:deletion.\\neach value up to 1000 (CLR: 10:60:30, CCS:6:21:73)."
    seed: "for a pseudorandom number generator (Unix time)."
    sample_fast_q: "FASTQ format file to sample."
    sample_profile_id: "sample-fastq (filtered) profile ID.\\nwhen using --sample-fastq, profile is stored.\\n'sample_profile_<ID>.fastq', and\\n'sample_profile_<ID>.stats' are created.\\nwhen not using --sample-fastq, profile is re-used.\\nNote that when profile is used, --length-min,max,\\n--accuracy-min,max would be the same as the profile."
    model_qc: "model of quality code."
    length_mean: "mean of length model (CLR: 3000.0, CCS:450.0)."
    length_sd: "standard deviation of length model.\\n(CLR: 2300.0, CCS: 170.0)."
    accuracy_mean: "mean of accuracy model.\\n(CLR: 0.78, CCS: fixed as 0.98).\\nthis option can be used only in case of CLR."
    accuracy_sd: "standard deviation of accuracy model.\\n(CLR: 0.02, CCS: fixed as 0.02).\\nthis option can be used only in case of CLR.\\n"
    reference: ""
  }
  output {
    File out_stdout = stdout()
  }
}