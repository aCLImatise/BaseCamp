version 1.0

task AppendLigand {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputTopZipPath
    String inputInputItpPath
    String outputOutputTopZipPath
  }
  command <<<
    append_ligand \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputTopZipPath) then ("--input_top_zip_path " +  '"' + inputInputTopZipPath + '"') else ""} \
      ~{if defined(inputInputItpPath) then ("--input_itp_path " +  '"' + inputInputItpPath + '"') else ""} \
      ~{if defined(outputOutputTopZipPath) then ("--output_top_zip_path " +  '"' + outputOutputTopZipPath + '"') else ""}
  >>>
}