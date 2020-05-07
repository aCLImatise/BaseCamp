version 1.0

task Lengths.py {
  input {
    File inputInputFile
  }
  command <<<
    Lengths.py \
      ~{if defined(inputInputFile) then ("--inputfile " +  '"' + inputInputFile + '"') else ""}
  >>>
}