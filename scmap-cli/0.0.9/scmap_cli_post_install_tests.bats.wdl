version 1.0

task Scmapclipostinstalltestsbats {
  command <<<
    scmap_cli_post_install_tests_bats
  >>>
  output {
    File out_stdout = stdout()
  }
}