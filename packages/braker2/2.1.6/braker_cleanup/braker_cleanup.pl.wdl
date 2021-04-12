version 1.0

task BrakerCleanuppl {
  input {
    Directory? wdir
  }
  command <<<
    braker_cleanup_pl \
      ~{if defined(wdir) then ("--wdir " +  '"' + wdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  parameter_meta {
    wdir: "output directory of braker.pl job"
  }
  output {
    File out_stdout = stdout()
    Directory out_wdir = "${in_wdir}"
  }
}