version 1.0

task Distruct.py {
  input {
    Int kK
    File inputInput
    File outputOutput
    File popfilePopfile
    String titleTitle
  }
  command <<<
    distruct.py \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(popfilePopfile) then ("--popfile " +  '"' + popfilePopfile + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""}
  >>>
}