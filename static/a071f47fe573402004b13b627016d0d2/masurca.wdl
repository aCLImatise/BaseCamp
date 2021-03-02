version 1.0

task Masurca {
  input {
    Boolean? assembly_script_assemblesh
    Boolean? generate
    Boolean? path
    Boolean? ld_library_path
    Boolean? skip_checking
  }
  command <<<
    masurca \
      ~{if (assembly_script_assemblesh) then "--output" else ""} \
      ~{if (generate) then "--generate" else ""} \
      ~{if (path) then "--path" else ""} \
      ~{if (ld_library_path) then "--ld-library-path" else ""} \
      ~{if (skip_checking) then "--skip-checking" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly_script_assemblesh: "Assembly script (assemble.sh)"
    generate: "Generate example configuration file"
    path: "Prepend to PATH in assembly script"
    ld_library_path: "Prepend to LD_LIBRARY_PATH in assembly script"
    skip_checking: "Skip checking availability of other executables"
  }
  output {
    File out_stdout = stdout()
  }
}