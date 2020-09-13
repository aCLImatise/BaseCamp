version 1.0

task Bandage {
  input {
    Boolean? help_all
  }
  command <<<
    Bandage \
      ~{if (help_all) then "--helpall" else ""}
  >>>
  parameter_meta {
    help_all: "View all command line settings"
  }
  output {
    File out_stdout = stdout()
  }
}