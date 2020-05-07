version 1.0

task Denoiser.py {
  input {
    String inputInputFiles
  }
  command <<<
    denoiser.py \
      ~{if defined(inputInputFiles) then ("--input_files " +  '"' + inputInputFiles + '"') else ""}
  >>>
}