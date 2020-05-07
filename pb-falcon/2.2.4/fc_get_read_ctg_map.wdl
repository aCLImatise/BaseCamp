version 1.0

task FcGetReadCtgMap {
  input {
    String basedirBasedir
  }
  command <<<
    fc_get_read_ctg_map \
      ~{if defined(basedirBasedir) then ("--basedir " +  '"' + basedirBasedir + '"') else ""}
  >>>
}