version 1.0

task Dexqv {
  input {
    Boolean? v_kl
  }
  command <<<
    dexqv \
      ~{if (v_kl) then "-vkl" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v_kl: ""
  }
  output {
    File out_stdout = stdout()
  }
}