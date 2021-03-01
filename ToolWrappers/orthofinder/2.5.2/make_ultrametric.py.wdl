version 1.0

task MakeUltrametricpy {
  input {
    String? root_age
    String tree_fn
  }
  command <<<
    make_ultrametric_py \
      ~{tree_fn} \
      ~{if defined(root_age) then ("--root_age " +  '"' + root_age + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/orthofinder:2.5.2--0"
  }
  parameter_meta {
    root_age: "Rescale branch lengths by a multiplicative factor to\\nachieve requested root age\\n"
    tree_fn: "File containing a rooted tree in newick format"
  }
  output {
    File out_stdout = stdout()
  }
}