version 1.0

task PpaniniRevUnirefMapper {
  command <<<
    ppanini_rev_uniref_mapper
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}