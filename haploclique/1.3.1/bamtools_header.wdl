version 1.0

task BamtoolsHeader {
  input {
    String? in
    File? list
  }
  command <<<
    bamtools header \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file(s) [stdin]"
    list: "the input BAM file list, one line per file"
  }
}