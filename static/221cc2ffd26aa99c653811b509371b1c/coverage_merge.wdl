version 1.0

task CoverageMerge.pl {
  input {
    String genome_dot_fa_dot_fai
    String sample_name
    String in_dir
    String include_list
    String at
  }
  command <<<
    coverage_merge.pl \
      ~{genome_dot_fa_dot_fai} \
      ~{sample_name} \
      ~{in_dir} \
      ~{include_list} \
      ~{at}
  >>>
  parameter_meta {
    genome_dot_fa_dot_fai: ""
    sample_name: ""
    in_dir: ""
    include_list: ""
    at: ""
  }
}