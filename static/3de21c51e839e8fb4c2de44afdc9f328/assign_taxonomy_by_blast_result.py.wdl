version 1.0

task AssignTaxonomyByBlastResultpy {
  input {
    Boolean? t
    String? i
  }
  command <<<
    assign_taxonomy_by_blast_result_py \
      ~{if (t) then "-t" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}