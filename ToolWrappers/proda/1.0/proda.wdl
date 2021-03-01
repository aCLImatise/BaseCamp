version 1.0

task Proda {
  input {
    Boolean? fast_a
    Boolean? tran
    Boolean? posterior
    Boolean? silent
    Int? l
    File filename
  }
  command <<<
    proda \
      ~{filename} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (tran) then "-tran" else ""} \
      ~{if (posterior) then "-posterior" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if defined(l) then ("-L " +  '"' + l + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: ""
    tran: ""
    posterior: ""
    silent: ""
    l: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}