version 1.0

task DenoiserPreprocess.py {
  input {
    String inputInputFiles
  }
  command <<<
    denoiser_preprocess.py \
      ~{if defined(inputInputFiles) then ("--input_files " +  '"' + inputInputFiles + '"') else ""}
  >>>
}