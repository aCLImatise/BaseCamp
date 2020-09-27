version 1.0

task Ilasm {
  input {
    Boolean? about
  }
  command <<<
    ilasm \
      ~{if (about) then "--about" else ""}
  >>>
  parameter_meta {
    about: "About the Mono ILasm compiler"
  }
  output {
    File out_stdout = stdout()
  }
}