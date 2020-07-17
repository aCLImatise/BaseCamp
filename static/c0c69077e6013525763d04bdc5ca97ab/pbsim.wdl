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
      ~{true="--prefix" false="" prefix} \
      ~{true="--data-type" false="" data_type} \
      ~{true="--depth" false="" depth} \
      ~{true="--length-min" false="" length_min} \
      ~{true="--length-max" false="" length_max} \
      ~{true="--accuracy-min" false="" accuracy_min} \
      ~{true="--accuracy-max" false="" accuracy_max} \
      ~{true="--difference-ratio" false="" difference_ratio} \
      ~{true="--seed" false="" seed} \
      ~{true="--sample-fastq" false="" sample_fast_q} \
      ~{true="--sample-profile-id" false="" sample_profile_id} \
      ~{true="--model_qc" false="" model_qc} \
      ~{true="--length-mean" false="" length_mean} \
      ~{true="--length-sd" false="" length_sd} \
      ~{true="--accuracy-mean" false="" accuracy_mean} \
      ~{true="--accuracy-sd" false="" accuracy_sd}
  >>>
  parameter_meta {
    prefix: "prefix of output files (sd)."
    data_type: "data type. CLR or CCS (CLR)."
    depth: "depth of coverage (CLR: 20.0, CCS: 50.0)."
    length_min: "minimum length (100)."
    length_max: "maximum length (CLR: 25000, CCS: 2500)."
    accuracy_min: "minimum accuracy. (CLR: 0.75, CCS: fixed as 0.75). this option can be used only in case of CLR."
    accuracy_max: "maximum accuracy. (CLR: 1.00, CCS: fixed as 1.00). this option can be used only in case of CLR."
    difference_ratio: "ratio of differences. substitution:insertion:deletion. each value up to 1000 (CLR: 10:60:30, CCS:6:21:73)."
    seed: "for a pseudorandom number generator (Unix time)."
    sample_fast_q: "FASTQ format file to sample."
    sample_profile_id: "sample-fastq (filtered) profile ID. when using --sample-fastq, profile is stored. 'sample_profile_<ID>.fastq', and 'sample_profile_<ID>.stats' are created. when not using --sample-fastq, profile is re-used. Note that when profile is used, --length-min,max, --accuracy-min,max would be the same as the profile."
    model_qc: "model of quality code."
    length_mean: "mean of length model (CLR: 3000.0, CCS:450.0)."
    length_sd: "standard deviation of length model. (CLR: 2300.0, CCS: 170.0)."
    accuracy_mean: "mean of accuracy model. (CLR: 0.78, CCS: fixed as 0.98). this option can be used only in case of CLR."
    accuracy_sd: "standard deviation of accuracy model. (CLR: 0.02, CCS: fixed as 0.02). this option can be used only in case of CLR."
    reference: ""
  }
}