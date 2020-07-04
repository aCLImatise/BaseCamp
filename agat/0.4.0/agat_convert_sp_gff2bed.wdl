version 1.0

task AgatConvertSpGff2bed.pl {
  input {
    File? gff
    String? o
  }
  command <<<
    agat_convert_sp_gff2bed.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    gff: ""
    o: ""
  }
}