version 1.0

task HapperBed {
  input {
    Boolean? v
    File? o
    String hap_per
    String seq_file
    String bed
  }
  command <<<
    happer bed \
      ~{hap_per} \
      ~{seq_file} \
      ~{bed} \
      ~{true="-v" false="" v} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    o: ""
    hap_per: ""
    seq_file: ""
    bed: ""
  }
}