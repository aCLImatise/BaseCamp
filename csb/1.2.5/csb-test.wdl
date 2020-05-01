version 1.0

task CsbTest {
  input {
    String typeType
    String verbosityVerbosity
    Boolean updateUpdateFiles
    String generatedGeneratedResources
    String? namespacesNamespaces
  }
  command <<<
    csb-test \
      ~{namespacesNamespaces} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--update-files" false="" updateUpdateFiles} \
      ~{if defined(generatedGeneratedResources) then ("--generated-resources " +  '"' + generatedGeneratedResources + '"') else ""}
  >>>
}