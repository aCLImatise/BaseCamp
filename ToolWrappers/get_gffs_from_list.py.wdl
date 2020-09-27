version 1.0

task GetGffsFromListpy {
  input {
    Boolean? partial
    String get
    String records
    String from
    String a
    String gff
    File file
    String list
  }
  command <<<
    get_gffs_from_list_py \
      ~{get} \
      ~{records} \
      ~{from} \
      ~{a} \
      ~{gff} \
      ~{file} \
      ~{list} \
      ~{if (partial) then "--partial" else ""}
  >>>
  parameter_meta {
    partial: ""
    get: ""
    records: ""
    from: ""
    a: ""
    gff: ""
    file: ""
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}