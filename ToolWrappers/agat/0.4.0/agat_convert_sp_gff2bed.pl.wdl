version 1.0

task AgatConvertSpGff2bedpl {
  input {
    Boolean? gff
    Boolean? sub
    File? outfile
    Int agat_convert_sp_gff_two_bed_do_tpl
    String block_count_dot
  }
  command <<<
    agat_convert_sp_gff2bed_pl \
      ~{agat_convert_sp_gff_two_bed_do_tpl} \
      ~{block_count_dot} \
      ~{if (gff) then "--gff" else ""} \
      ~{if (sub) then "--sub" else ""} \
      ~{if (outfile) then "--outfile" else ""}
  >>>
  parameter_meta {
    gff: "Input GFF3 file that will be read"
    sub: "Define the subfeature (level3, e.g exon,cds,utr,etc...) to\\nreport as blocks in the bed output. Defaut: exon."
    outfile: ", or -o\\nFile where will be written the result. If no output file is\\nspecified, the output will be written to STDOUT."
    agat_convert_sp_gff_two_bed_do_tpl: "Description:"
    block_count_dot: "Usage:\\nagat_convert_sp_gff2bed.pl --gff file.gff  [ -o outfile ]\\nagat_convert_sp_gff2bed.pl --help"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}