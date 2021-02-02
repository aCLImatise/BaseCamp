version 1.0

task AgatSpFixOverlapingGenespl {
  input {
    File? file
    File? outfile
    String agat_sp_fix_overlap_ing_genes_do_tpl
  }
  command <<<
    agat_sp_fix_overlaping_genes_pl \
      ~{agat_sp_fix_overlap_ing_genes_do_tpl} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    file: "Input GTF/GFF file."
    outfile: "Output file. If none given, will be display in standard output."
    agat_sp_fix_overlap_ing_genes_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}