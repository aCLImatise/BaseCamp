version 1.0

task SalmID.py {
  input {
    String inputInputFile
    File extensionExtension
    Directory inputInputDir
    String rR
    String mM
  }
  command <<<
    SalmID.py \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(extensionExtension) then ("--extension " +  '"' + extensionExtension + '"') else ""} \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}