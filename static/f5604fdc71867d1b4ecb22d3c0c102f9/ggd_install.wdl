version 1.0

task GgdInstall {
  input {
    String? channel
    Boolean? debug
    File? file
    File? prefix
    String name
  }
  command <<<
    ggd install \
      ~{name} \
      ~{if defined(channel) then ("--channel " +  '"' + channel + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    channel: "The ggd channel the desired recipe is stored in.\\n(Default = genomics)"
    debug: "(Optional) When the -d flag is set debug output will\\nbe printed to stdout."
    file: "A file with a list of ggd data packages to install.\\nOne package per line. Can use more than one (e.g. ggd\\ninstall --file <file_1> --file <file_2> )"
    prefix: "(Optional) The name or the full directory path to an\\nexisting conda environment where you want to install a\\nggd data pacakge. (Only needed if you want to install\\nthe data package into a different conda environment\\nthen the one you are currently in)\\n"
    name: "The data package name to install. Can use more than\\nonce (e.g. ggd install <pkg 1> <pkg 2> <pkg 3> ).\\n(NOTE: No need to designate version as it is\\nimplicated in the package name)"
  }
  output {
    File out_stdout = stdout()
  }
}