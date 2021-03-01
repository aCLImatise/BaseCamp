version 1.0

task CooltoolsRandomsample {
  input {
    Int? count
    Float? frac
    Boolean? exact
    Int? chunksize
    String in_path
    String out_path
  }
  command <<<
    cooltools random_sample \
      ~{in_path} \
      ~{out_path} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(frac) then ("--frac " +  '"' + frac + '"') else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0"
  }
  parameter_meta {
    count: "The target number of contacts in the sample. The\\nresulting sample size will not match it precisely.\\nMutually exclusive with --frac"
    frac: "The target sample size as a fraction of contacts in the\\noriginal dataset. Mutually exclusive with --count"
    exact: "If specified, use exact sampling that guarantees the\\nsize of the output sample. Otherwise, binomial sampling\\nwill be used and the sample size will be distributed\\naround the target value."
    chunksize: "The number of pixels loaded and processed per step of"
    in_path: ""
    out_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}