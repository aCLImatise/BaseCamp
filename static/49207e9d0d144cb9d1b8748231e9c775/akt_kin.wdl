version 1.0

task AktKin {
  input {
    Boolean? minkin
    Boolean? freq_file
    Boolean? method
    Boolean? af_tag
    Boolean? threads
    Boolean? regions_file
    Boolean? regions
    Boolean? targets_file
    Boolean? targets
    Boolean? force
    Boolean? samples
    Boolean? samples_file
    String in_dot_bcf
  }
  command <<<
    akt kin \
      ~{in_dot_bcf} \
      ~{true="--minkin" false="" minkin} \
      ~{true="--freq-file" false="" freq_file} \
      ~{true="--method" false="" method} \
      ~{true="--aftag" false="" af_tag} \
      ~{true="--threads" false="" threads} \
      ~{true="--regions-file" false="" regions_file} \
      ~{true="--regions" false="" regions} \
      ~{true="--targets-file" false="" targets_file} \
      ~{true="--targets" false="" targets} \
      ~{true="--force" false="" force} \
      ~{true="--samples" false="" samples} \
      ~{true="--samples-file" false="" samples_file}
  >>>
  parameter_meta {
    minkin: ":                   threshold for relatedness output (none)"
    freq_file: ":                a file containing population allele frequencies to use in kinship calculation"
    method: ":                   type of estimator. 0:plink (default) 1:king-robust 2:genetic-relationship-matrix"
    af_tag: ":                    allele frequency tag (default AF)"
    threads: ":                  num threads"
    regions_file: ":             restrict to regions listed in a file"
    regions: ":                  chromosome region"
    targets_file: ":             similar to -R but streams rather than index-jumps"
    targets: ":                  similar to -r but streams rather than index-jumps"
    force: ":                    run kin without -R/-T/-F"
    samples: ":                  list of samples"
    samples_file: ":             list of samples, file"
    in_dot_bcf: ""
  }
}