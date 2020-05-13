version 1.0

task Pdb2gmx {
  input {
    String cC
    String systemSystem
    String stepStep
    String inputInputPdbPath
    String outputOutputGroPath
    String outputOutputTopZipPath
  }
  command <<<
    pdb2gmx \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(systemSystem) then ("--system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(inputInputPdbPath) then ("--input_pdb_path " +  '"' + inputInputPdbPath + '"') else ""} \
      ~{if defined(outputOutputGroPath) then ("--output_gro_path " +  '"' + outputOutputGroPath + '"') else ""} \
      ~{if defined(outputOutputTopZipPath) then ("--output_top_zip_path " +  '"' + outputOutputTopZipPath + '"') else ""}
  >>>
}