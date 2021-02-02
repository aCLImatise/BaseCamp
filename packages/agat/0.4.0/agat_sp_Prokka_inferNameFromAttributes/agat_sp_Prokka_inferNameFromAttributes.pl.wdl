version 1.0

task AgatSpProkkaInferNameFromAttributespl {
  input {
    File? gff
    String? force
    File? _output_
    String agat_sp_pro_kk_a_infer_name_from_attributes_do_tpl
  }
  command <<<
    agat_sp_Prokka_inferNameFromAttributes_pl \
      ~{agat_sp_pro_kk_a_infer_name_from_attributes_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(force) then ("--force " +  '"' + force + '"') else ""} \
      ~{if (_output_) then "-o" else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    force: "Name attribute already exists, they will be replaced if a new\\none is found"
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_pro_kk_a_infer_name_from_attributes_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}