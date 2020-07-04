version 1.0

task GgdInstall {
  input {
    String? channel
    Boolean? debug
    File? file
    String? prefix
    String name
  }
  command <<<
    ggd install \
      ~{name} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    channel: "The ggd channel the desired recipe is stored in. (Default = genomics)"
    debug: "(Optional) When the -d flag is set debug output will be printed to stdout."
    file: "A file with a list of ggd data packages to install. One package per line. Can use more than one (e.g. ggd install --file <file_1> --file <file_2> )"
    prefix: "(Optional) The name or the full directory path to an existing conda environment where you want to install a ggd data pacakge. (Only needed if you want to install the data package into a different conda environment then the one you are currently in)"
    name: "The data package name to install. Can use more than once (e.g. ggd install <pkg 1> <pkg 2> <pkg 3> ). (NOTE: No need to designate version as it is implicated in the package name)"
  }
}