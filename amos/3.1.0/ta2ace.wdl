version 1.0

task Ta2ace {
  input {
    String aA
  }
  command <<<
    ta2ace \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""}
  >>>
}