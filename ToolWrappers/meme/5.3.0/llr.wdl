version 1.0

task Llr {
  input {
    String? range
    String? frac
    String? w
    Int? max_n
    String? minn
    String? n
    String copyright
  }
  command <<<
    llr \
      ~{copyright} \
      ~{if defined(range) then ("-range " +  '"' + range + '"') else ""} \
      ~{if defined(frac) then ("-frac " +  '"' + frac + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(max_n) then ("-maxN " +  '"' + max_n + '"') else ""} \
      ~{if defined(minn) then ("-minN " +  '"' + minn + '"') else ""} \
      ~{if defined(n) then ("-N " +  '"' + n + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    range: ""
    frac: ""
    w: ""
    max_n: ""
    minn: ""
    n: ""
    copyright: "(2000-2006) The Regents of the University of California"
  }
  output {
    File out_stdout = stdout()
  }
}