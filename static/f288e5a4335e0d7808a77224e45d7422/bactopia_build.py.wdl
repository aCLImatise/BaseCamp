version 1.0

task Bactopiabuildpy {
  input {
    String? ext
    Boolean? force
    Boolean? verbose
    Boolean? silent
    String bac_topia
    String build
  }
  command <<<
    bactopia_build_py \
      ~{bac_topia} \
      ~{build} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ext: "Extension of the Conda environment files. Default: .yml"
    force: "Force overwrite of existing Conda environments."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    bac_topia: ""
    build: ""
  }
  output {
    File out_stdout = stdout()
  }
}