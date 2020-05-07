version 1.0

task MakePpRstFile.py {
  input {
    String inputInputScript
    String outputOutputDir
  }
  command <<<
    make_pp_rst_file.py \
      ~{if defined(inputInputScript) then ("--input_script " +  '"' + inputInputScript + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}