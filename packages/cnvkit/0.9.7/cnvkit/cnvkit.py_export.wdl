version 1.0

task CnvkitpyExport {
  command <<<
    cnvkit_py export
  >>>
  output {
    File out_stdout = stdout()
  }
}