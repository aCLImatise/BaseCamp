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
      ~{if (minkin) then "--minkin" else ""} \
      ~{if (freq_file) then "--freq-file" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (af_tag) then "--aftag" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (regions_file) then "--regions-file" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if (targets_file) then "--targets-file" else ""} \
      ~{if (targets) then "--targets" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (samples_file) then "--samples-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
  }
}