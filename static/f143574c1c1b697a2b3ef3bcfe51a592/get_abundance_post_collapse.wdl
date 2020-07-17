version 1.0

task GetAbundancePostCollapse.py {
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
    String iso_seq_one
  }
  command <<<
    get_abundance_post_collapse.py \
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
}