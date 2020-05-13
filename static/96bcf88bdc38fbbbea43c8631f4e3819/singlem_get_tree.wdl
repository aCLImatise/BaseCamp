version 1.0

task SinglemGetTree {
  input {
    Boolean debugDebug
    Boolean quietQuiet
    Boolean fullFullHelp
    Array[String]+ singleSingleMPackages
  }
  command <<<
    singlem get_tree \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--full_help" false="" fullFullHelp} \
      ~{if defined(singleSingleMPackages) then ("--singlem_packages " +  '"' + singleSingleMPackages + '"') else ""}
  >>>
}