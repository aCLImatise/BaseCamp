version 1.0

task RunSpp.R {
  input {
    String? rRScript
    String? runRunSpPr
  }
  command <<<
    run_spp.R \
      ~{rRScript} \
      ~{runRunSpPr}
  >>>
}