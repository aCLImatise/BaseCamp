version 1.0

task OgenstackbarwithsetsfromENVIRONMENT {
  command <<<
    o_gen_stackbar_with_sets_from_ENVIRONMENT
  >>>
  output {
    File out_stdout = stdout()
  }
}