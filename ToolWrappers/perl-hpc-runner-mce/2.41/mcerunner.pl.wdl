version 1.0

task Mcerunnerpl {
  input {
    Boolean? using_mce
  }
  command <<<
    mcerunner_pl \
      ~{if (using_mce) then "--using_mce" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    using_mce: "- Bool. Default=1."
  }
  output {
    File out_stdout = stdout()
  }
}