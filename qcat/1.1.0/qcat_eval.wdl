version 1.0

task Qcateval {
  input {
    String? tsv
    String? name
    String? dataset
    Boolean? summary
    String? guppy_summary
    String? get_incorrect
    String fast_q
  }
  command <<<
    qcat_eval \
      ~{fast_q} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if defined(guppy_summary) then ("--guppy_summary " +  '"' + guppy_summary + '"') else ""} \
      ~{if defined(get_incorrect) then ("--get-incorrect " +  '"' + get_incorrect + '"') else ""}
  >>>
  parameter_meta {
    tsv: ""
    name: ""
    dataset: ""
    summary: ""
    guppy_summary: ""
    get_incorrect: ""
    fast_q: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}