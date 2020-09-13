version 1.0

task Qcatevaltruth {
  input {
    String? tsv
    String? name
    String? genomes
    Int? max
    String fast_q
  }
  command <<<
    qcat_eval_truth \
      ~{fast_q} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""}
  >>>
  parameter_meta {
    tsv: ""
    name: ""
    genomes: ""
    max: ""
    fast_q: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}