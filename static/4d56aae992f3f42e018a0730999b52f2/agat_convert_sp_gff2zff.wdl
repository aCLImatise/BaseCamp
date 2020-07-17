version 1.0

task AgatConvertSpGff2zff.pl {
  input {
    File? gff
    File? fast_a
    String? o
  }
  command <<<
    agat_convert_sp_gff2zff.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    gff: ""
    fast_a: ""
    o: ""
  }
}