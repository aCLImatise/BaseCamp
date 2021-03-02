version 1.0

task Perlatlasmodulespostlinksh {
  command <<<
    _perl_atlas_modules_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-atlas-modules:0.1.6--he1b5a44_0"
  }
  output {
    File out_stdout = stdout()
  }
}