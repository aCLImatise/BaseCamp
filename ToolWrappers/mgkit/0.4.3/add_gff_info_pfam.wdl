version 1.0

task AddgffinfoPfam {
  input {
    String? verbose
    Boolean? use_accession
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info pfam \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (use_accession) then "--use-accession" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "In which attribute the Pfam ID/ACCESSION is stored\\n(defaults to *gene_id*)"
    use_accession: "If used, the attribute value is the Pfam ACCESSION\\n(e.g. PF06894), not ID (e.g. Phage_TAC_2)"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}