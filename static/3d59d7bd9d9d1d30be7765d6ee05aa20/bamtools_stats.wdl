version 1.0

task BamtoolsStats {
  input {
    String? in
    File? list
    Boolean? insert
  }
  command <<<
    bamtools stats \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{true="-insert" false="" insert}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    list: "the input BAM file list, one line per file"
    insert: "summarize insert size data"
  }
}