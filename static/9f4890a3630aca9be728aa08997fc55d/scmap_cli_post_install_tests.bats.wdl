version 1.0

task Scmapclipostinstalltestsbats {
  command <<<
    scmap_cli_post_install_tests_bats
  >>>
  runtime {
    docker: "quay.io/biocontainers/scmap-cli:0.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}