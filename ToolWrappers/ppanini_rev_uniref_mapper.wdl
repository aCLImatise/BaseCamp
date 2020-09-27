version 1.0

task PpaniniRevUnirefMapper {
  command <<<
    ppanini_rev_uniref_mapper
  >>>
  output {
    File out_stdout = stdout()
  }
}