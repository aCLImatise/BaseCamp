version 1.0

task PyqiMakeRelease {
  input {
    String? package_name
  }
  command <<<
    pyqi make-release \
      ~{if defined(package_name) then ("--package-name " +  '"' + package_name + '"') else ""}
  >>>
  parameter_meta {
    package_name: "The name of the package to release [REQUIRED]"
  }
}