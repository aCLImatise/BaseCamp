version 1.0

task AgatSpProkkaInferNameFromAttributespl {
  input {
    File? gff
    String? force
    File? outfile
    String agat_sp_pro_kk_a_infer_name_from_attributes_do_tpl
  }
  command <<<
    agat_sp_Prokka_inferNameFromAttributes_pl \
      ~{agat_sp_pro_kk_a_infer_name_from_attributes_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(force) then ("--force " +  '"' + force + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    force: "Name attribute already exists, they will be replaced if a new\\none is found"
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_pro_kk_a_infer_name_from_attributes_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}