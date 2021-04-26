version 1.0

task BasenjiBenchGtexCmppy {
  input {
    String? alt
    Boolean? hue
    Int? stats
    Int bench_two_dir
  }
  command <<<
    basenji_bench_gtex_cmp_py \
      ~{bench_two_dir} \
      ~{if defined(alt) then ("--alt " +  '"' + alt + '"') else ""} \
      ~{if (hue) then "--hue" else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    alt: "Statistical test alternative [Default: two-sided]"
    hue: "Scatter plot variant number as hue [Default: False]"
    stats: "Minimum variants to include tissue [Default: 0]"
    bench_two_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}