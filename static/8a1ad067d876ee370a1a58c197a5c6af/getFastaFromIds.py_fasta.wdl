version 1.0

task GetFastaFromIdspyFasta {
  input {
    Boolean? v
    String get_fasta_from_ids_do_tpy
    String list
    String fast_a
    String? out
  }
  command <<<
    getFastaFromIds_py fasta \
      ~{get_fasta_from_ids_do_tpy} \
      ~{list} \
      ~{fast_a} \
      ~{out} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0"
  }
  parameter_meta {
    v: ""
    get_fasta_from_ids_do_tpy: ""
    list: ""
    fast_a: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}