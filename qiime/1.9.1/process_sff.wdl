version 1.0

task ProcessSff.py {
  input {
    String inputInputDir
  }
  command <<<
    process_sff.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""}
  >>>
}