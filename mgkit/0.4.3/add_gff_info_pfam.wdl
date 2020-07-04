version 1.0

task AddGffInfoPfam {
  input {
    String? id_attr
    Boolean? use_accession
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info pfam \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(id_attr) then ("--id-attr " +  '"' + id_attr + '"') else ""} \
      ~{true="--use-accession" false="" use_accession}
  >>>
  parameter_meta {
    id_attr: "In which attribute the Pfam ID/ACCESSION is stored (defaults to *gene_id*)"
    use_accession: "If used, the attribute value is the Pfam ACCESSION (e.g. PF06894), not ID (e.g. Phage_TAC_2)"
    input_file: ""
    output_file: ""
  }
}