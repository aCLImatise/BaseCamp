version 1.0

task Sibeliaz {
  input {
    Boolean? n
    Directory? o
    Int? f
    Int? t
    Int? a
    Int? m
    Int? b
    Int? k
    File input_file
  }
  command <<<
    sibeliaz \
      ~{input_file} \
      ~{if (n) then "-n" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sibeliaz:1.2.2--he1b5a44_0"
  }
  parameter_meta {
    n: ""
    o: ""
    f: ""
    t: ""
    a: ""
    m: ""
    b: ""
    k: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_o = "${in_o}"
  }
}