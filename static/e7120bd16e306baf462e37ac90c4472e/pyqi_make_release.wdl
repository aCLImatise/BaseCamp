version 1.0

task PyqiMakerelease {
  input {
    Boolean? real_run
    String? package_name
  }
  command <<<
    pyqi make_release \
      ~{if (real_run) then "--real-run" else ""} \
      ~{if defined(package_name) then ("--package-name " +  '"' + package_name + '"') else ""}
  >>>
  parameter_meta {
    real_run: "Perform a real run [default: False]"
    package_name: "The name of the package to release [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}