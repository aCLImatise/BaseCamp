version 1.0

task BactopiaBuild.py {
  input {
    String? ext
    Boolean? force
    Boolean? verbose
    Boolean? silent
    String bac_topia
    String build
  }
  command <<<
    bactopia-build.py \
      ~{bac_topia} \
      ~{build} \
      ~{if defined(ext) then ("--ext " +  '"' + ext + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    ext: "Extension of the Conda environment files. Default: .yml"
    force: "Force overwrite of existing Conda environments."
    verbose: "Print debug related text."
    silent: "Only critical errors will be printed."
    bac_topia: ""
    build: ""
  }
}