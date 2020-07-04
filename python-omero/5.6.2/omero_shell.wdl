version 1.0

task OmeroShell {
  input {
    Boolean? login
    String arg
  }
  command <<<
    omero shell \
      ~{arg} \
      ~{true="--login" false="" login}
  >>>
  parameter_meta {
    login: "Logins in and sets the 'client' variable"
    arg: "Arguments for IPython."
  }
}