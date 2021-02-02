version 1.0

task MafGcContentpy {
  command <<<
    maf_gc_content_py
  >>>
  output {
    File out_stdout = stdout()
  }
}