version 1.0

task PrincipalCoordinates.py {
  input {
    String inputInputPath
    String outputOutputPath
  }
  command <<<
    principal_coordinates.py \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}