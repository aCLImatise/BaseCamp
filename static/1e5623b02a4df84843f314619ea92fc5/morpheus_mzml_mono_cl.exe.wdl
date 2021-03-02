version 1.0

task MorpheusMzmlMonoClexe {
  command <<<
    morpheus_mzml_mono_cl_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}