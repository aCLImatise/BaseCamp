version 1.0

task MorpheusMzmlMonoClexe {
  command <<<
    morpheus_mzml_mono_cl_exe
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}