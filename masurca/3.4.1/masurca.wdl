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
      ~{true="--output" false="" assembly_script_assemblesh} \
      ~{true="--generate" false="" generate} \
      ~{true="--path" false="" path} \
      ~{true="--ld-library-path" false="" ld_library_path} \
      ~{true="--skip-checking" false="" skip_checking}
  >>>
  parameter_meta {
    assembly_script_assemblesh: "Assembly script (assemble.sh)"
    generate: "Generate example configuration file"
    path: "Prepend to PATH in assembly script"
    ld_library_path: "Prepend to LD_LIBRARY_PATH in assembly script"
    skip_checking: "Skip checking availability of other executables"
  }
}