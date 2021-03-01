version 1.0

task Raintegrate {
  input {
    File? spec
    File? directory
    File? overlaps
  }
  command <<<
    ra_integrate \
      ~{if defined(spec) then ("--spec " +  '"' + spec + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(overlaps) then ("--overlaps " +  '"' + overlaps + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    spec: "Set given spec file"
    directory: "Set given dirpath as working directory"
    overlaps: "Skip overlap phase and use overlaps from given file"
  }
  output {
    File out_stdout = stdout()
  }
}