version 1.0

task TransIndelBuildDNApy {
  input {
    Boolean? mapq_cut_off
    Boolean? max_del_length
    File? o
    File? i
  }
  command <<<
    transIndel_build_DNA_py \
      ~{if (mapq_cut_off) then "--mapq_cutoff" else ""} \
      ~{if (max_del_length) then "--max_del_length" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    mapq_cut_off: ":minimal MapQ in SAM for support SV event, default 15"
    max_del_length: ":maximum deletion length to be detected (10e6)"
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}