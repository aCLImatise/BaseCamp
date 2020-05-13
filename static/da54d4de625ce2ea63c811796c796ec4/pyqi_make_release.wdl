version 1.0

task PyqiMakeRelease {
  input {
    String packagePackageName
  }
  command <<<
    pyqi make-release \
      ~{if defined(packagePackageName) then ("--package-name " +  '"' + packagePackageName + '"') else ""}
  >>>
}