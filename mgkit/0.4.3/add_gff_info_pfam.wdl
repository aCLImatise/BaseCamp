version 1.0

task AddgffinfoPfam {
  input {
    Boolean? verbose
    String? id_attr
    Boolean? use_accession
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info pfam \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(id_attr) then ("--id-attr " +  '"' + id_attr + '"') else ""} \
      ~{if (use_accession) then "--use-accession" else ""}
  >>>
  parameter_meta {
    verbose: ""
    id_attr: "In which attribute the Pfam ID/ACCESSION is stored\\n(defaults to *gene_id*)"
    use_accession: "If used, the attribute value is the Pfam ACCESSION\\n(e.g. PF06894), not ID (e.g. Phage_TAC_2)"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}