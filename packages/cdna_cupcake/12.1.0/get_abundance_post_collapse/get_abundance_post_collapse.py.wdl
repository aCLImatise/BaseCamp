version 1.0

task GetAbundancePostCollapsepy {
  input {
    String get
    String abundance_slash_read
    String stat
    String information
    String after
    String running
    String collapse
    String script_dot
    String works
    String for
    Int iso_seq_one
  }
  command <<<
    get_abundance_post_collapse_py \
      ~{get} \
      ~{abundance_slash_read} \
      ~{stat} \
      ~{information} \
      ~{after} \
      ~{running} \
      ~{collapse} \
      ~{script_dot} \
      ~{works} \
      ~{for} \
      ~{iso_seq_one}
  >>>
  parameter_meta {
    get: ""
    abundance_slash_read: ""
    stat: ""
    information: ""
    after: ""
    running: ""
    collapse: ""
    script_dot: ""
    works: ""
    for: ""
    iso_seq_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}