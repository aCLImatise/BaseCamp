version 1.0

task GetGffsFromList.py {
  input {
    Boolean? partial
    String get
    String records
    String var_3
    String var_4
    String gff
    File file
    String var_7
    String var_8
    String list
  }
  command <<<
    get_gffs_from_list.py \
      ~{get} \
      ~{records} \
      ~{var_3} \
      ~{var_4} \
      ~{gff} \
      ~{file} \
      ~{var_7} \
      ~{var_8} \
      ~{list} \
      ~{true="--partial" false="" partial}
  >>>
  parameter_meta {
    partial: ""
    get: ""
    records: ""
    var_3: ""
    var_4: ""
    gff: ""
    file: ""
    var_7: ""
    var_8: ""
    list: ""
  }
}