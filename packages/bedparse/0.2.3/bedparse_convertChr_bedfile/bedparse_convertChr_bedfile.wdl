version 1.0

task BedparseConvertChrBedfile {
  input {
    String? target
    String? assembly
    String bed_parse
    String convert_chr
  }
  command <<<
    bedparse convertChr bedfile \
      ~{bed_parse} \
      ~{convert_chr} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""}
  >>>
  parameter_meta {
    target: ""
    assembly: ""
    bed_parse: ""
    convert_chr: ""
  }
  output {
    File out_stdout = stdout()
  }
}