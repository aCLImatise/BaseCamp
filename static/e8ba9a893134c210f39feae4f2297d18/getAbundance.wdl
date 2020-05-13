version 1.0

task GetAbundance {
  input {
    Int cC
  }
  command <<<
    getAbundance \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}