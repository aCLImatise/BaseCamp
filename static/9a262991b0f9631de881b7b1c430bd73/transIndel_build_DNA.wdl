version 1.0

task TransIndelBuildDNA.py {
  input {
    Boolean? mapq_cut_off
    Boolean? max_del_length
    String? i
    String? o
    String? opts
  }
  command <<<
    transIndel_build_DNA.py \
      ~{opts} \
      ~{true="--mapq_cutoff" false="" mapq_cut_off} \
      ~{true="--max_del_length" false="" max_del_length} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    mapq_cut_off: ":minimal MapQ in SAM for support SV event, default 15"
    max_del_length: ":maximum deletion length to be detected (10e6)"
    i: ""
    o: ""
    opts: ""
  }
}