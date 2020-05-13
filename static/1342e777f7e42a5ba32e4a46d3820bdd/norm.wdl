version 1.0

task Norm {
  input {
    String aA
  }
  command <<<
    norm \
      ~{if defined(aA) then ("-- a " +  '"' + aA + '"') else ""}
  >>>
}