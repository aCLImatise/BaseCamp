version 1.0

task MakeUltrametric.py {
  input {
    String? root_age
    String tree_fn
  }
  command <<<
    make_ultrametric.py \
      ~{tree_fn} \
      ~{if defined(root_age) then ("--root_age " +  '"' + root_age + '"') else ""}
  >>>
  parameter_meta {
    root_age: "Rescale branch lengths by a multiplicative factor to achieve requested root age"
    tree_fn: "File containing a rooted tree in newick format"
  }
}