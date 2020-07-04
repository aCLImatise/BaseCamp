version 1.0

task SnpSites {
  input {
    Boolean? rmv_pc_bhv
    String? o
    File file
  }
  command <<<
    snp-sites \
      ~{file} \
      ~{true="-rmvpcbhV" false="" rmv_pc_bhv} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    rmv_pc_bhv: ""
    o: ""
    file: ""
  }
}