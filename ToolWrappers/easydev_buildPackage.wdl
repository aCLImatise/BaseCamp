version 1.0

task EasydevBuildPackage {
  input {
    String? pkgname
    String? package
    String? namespace
    Boolean? no_share_directory
    String? verbosity
    String usage
  }
  command <<<
    easydev_buildPackage \
      ~{usage} \
      ~{if defined(pkgname) then ("--pkgname " +  '"' + pkgname + '"') else ""} \
      ~{if defined(package) then ("--package " +  '"' + package + '"') else ""} \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""} \
      ~{if (no_share_directory) then "--no-share-directory" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    pkgname: "Name of the package to be created"
    package: "Name of the package to be created"
    namespace: "If provided, creates a namespace."
    no_share_directory: "if five, the share directory is not created"
    verbosity: "set verbosity to INFO, WARNING or ERROR\\n"
    usage: ""
  }
  output {
    File out_stdout = stdout()
  }
}