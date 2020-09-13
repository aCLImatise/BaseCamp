version 1.0

task ConvertOverlap {
  input {
    Boolean? convert_overlap_file
    Boolean? ovl
    Boolean? obt
    Boolean? mer
    String? read_overlaps_default
    String? write_overlaps_default
  }
  command <<<
    convertOverlap \
      ~{if (convert_overlap_file) then "-a" else ""} \
      ~{if (ovl) then "-ovl" else ""} \
      ~{if (obt) then "-obt" else ""} \
      ~{if (mer) then "-mer" else ""} \
      ~{if defined(read_overlaps_default) then ("-i " +  '"' + read_overlaps_default + '"') else ""} \
      ~{if defined(write_overlaps_default) then ("-o " +  '"' + write_overlaps_default + '"') else ""}
  >>>
  parameter_meta {
    convert_overlap_file: "convert to ASCII, from a BINARY overlap file."
    ovl: "convert to BINARY, from an ASCII overlap file."
    obt: "convert to BINARY, from an ASCII partial overlap file."
    mer: "convert to BINARY, from an ASCII mer overlap file."
    read_overlaps_default: "read overlaps from 'in'; default is stdin"
    write_overlaps_default: "write overlaps to 'out'; default is stdout"
  }
  output {
    File out_stdout = stdout()
  }
}