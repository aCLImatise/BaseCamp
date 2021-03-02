version 1.0

task DatafunkRepairNames {
  input {
    String? out
    String? tree
    String? fast_a
  }
  command <<<
    datafunk repair_names \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    out: ""
    tree: ""
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}