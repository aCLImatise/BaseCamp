version 1.0

task TraitarShow {
  input {
    Boolean? predictor
  }
  command <<<
    traitar show \
      ~{if (predictor) then "--predictor" else ""}
  >>>
  parameter_meta {
    predictor: "{phypat,phypat+PGL}"
  }
  output {
    File out_stdout = stdout()
  }
}