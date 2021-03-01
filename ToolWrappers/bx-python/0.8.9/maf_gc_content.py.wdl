version 1.0

task MafGcContentpy {
  command <<<
    maf_gc_content_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}