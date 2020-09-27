version 1.0

task CalibCons {
  input {
    String? parameter
  }
  command <<<
    calib_cons \
      ~{if defined(parameter) then ("--PARAMETER " +  '"' + parameter + '"') else ""}
  >>>
  parameter_meta {
    parameter: ""
  }
  output {
    File out_stdout = stdout()
  }
}