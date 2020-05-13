version 1.0

task DumpFile.py {
  input {
    String inputInputFile
  }
  command <<<
    dump_file.py \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""}
  >>>
}