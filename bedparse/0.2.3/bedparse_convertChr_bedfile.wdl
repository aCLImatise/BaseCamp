version 1.0

task BedparseConvertChrBedfile {
  input {
    String? assembly
    String? target
    String bed_parse
    String convert_chr
  }
  command <<<
    bedparse convertChr bedfile \
      ~{bed_parse} \
      ~{convert_chr} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    assembly: ""
    target: ""
    bed_parse: ""
    convert_chr: ""
  }
}