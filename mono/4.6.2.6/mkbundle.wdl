version 1.0

task Mkbundle {
  input {
    File? config
    String? config_dir
    Boolean? deps
    File? adds_path_search
    File? machine_config
    File? specifies_output_filename
    Boolean? nodeps
    Boolean? skip_scan
    Boolean? simple
    File? custom
  }
  command <<<
    mkbundle \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(config_dir) then ("--config-dir " +  '"' + config_dir + '"') else ""} \
      ~{if (deps) then "--deps" else ""} \
      ~{if defined(adds_path_search) then ("-L " +  '"' + adds_path_search + '"') else ""} \
      ~{if defined(machine_config) then ("--machine-config " +  '"' + machine_config + '"') else ""} \
      ~{if defined(specifies_output_filename) then ("-o " +  '"' + specifies_output_filename + '"') else ""} \
      ~{if (nodeps) then "--nodeps" else ""} \
      ~{if (skip_scan) then "--skip-scan" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if (custom) then "--custom" else ""}
  >>>
  parameter_meta {
    config: "Bundle system config file `F'"
    config_dir: "Set MONO_CFG_DIR to `D'"
    deps: "Turns on automatic dependency embedding (default on simple)"
    adds_path_search: "Adds `path' to the search path for assemblies"
    machine_config: "Use the given file as the machine.config for the application."
    specifies_output_filename: "Specifies output filename"
    nodeps: "Turns off automatic dependency embedding (default on custom)"
    skip_scan: "Skip scanning assemblies that could not be loaded (but still embed them)."
    simple: "Simple mode does not require a C toolchain and can cross compile\\n--cross TARGET      Generates a binary for the given TARGET\\n--local-targets     Lists locally available targets\\n--list-targets      Lists available targets on the remote server\\n--options OPTIONS   Embed the specified Mono command line options on target\\n--runtime RUNTIME   Manually specifies the Mono runtime to use\\n--target-server URL Specified a server to download targets from, default is https://download.mono-project.com/runtimes/raw/"
    custom: "Builds a custom launcher, options for --custom\\n-c                  Produce stub only, do not compile\\n-oo obj             Specifies output filename for helper object file\\n--dos2unix[=true|false]\\nWhen no value provided, or when `true` specified\\n`dos2unix` will be invoked to convert paths on Windows.\\nWhen `--dos2unix=false` used, dos2unix is NEVER used.\\n--keeptemp          Keeps the temporary files\\n--static            Statically link to mono libs\\n--nomain            Don't include a main() function, for libraries\\n--custom-main C     Link the specified compilation unit (.c or .obj) with entry point/init code\\n-z                  Compress the assemblies before embedding.\\n--static-ctor ctor  Add a constructor call to the supplied function.\\nYou need zlib development headers and libraries.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specifies_output_filename = "${in_specifies_output_filename}"
    File out_custom = "${in_custom}"
  }
}