version 1.0

task FixAF1.py {
  input {
    String inputInputFile
  }
  command <<<
    fix_AF1.py \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""}
  >>>
}