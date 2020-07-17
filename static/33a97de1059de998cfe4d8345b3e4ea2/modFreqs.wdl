version 1.0

task ModFreqs {
  input {
    String tree_dot_mod
    String a_freq
    String c_freq
    String g_freq
    String t_freq
  }
  command <<<
    modFreqs \
      ~{tree_dot_mod} \
      ~{a_freq} \
      ~{c_freq} \
      ~{g_freq} \
      ~{t_freq}
  >>>
  parameter_meta {
    tree_dot_mod: ""
    a_freq: ""
    c_freq: ""
    g_freq: ""
    t_freq: ""
  }
}