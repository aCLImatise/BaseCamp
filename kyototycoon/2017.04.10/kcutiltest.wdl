version 1.0

task Kcutiltest {
  input {
    Boolean? rnd
    Int? b_num
    Int? msi_z
    Int? th
    Int? iv
    String cond
    File file
    String lh_map
    String misc
    String mutex
    String para
    String t_a_list
    String th_map
    File path
  }
  command <<<
    kcutiltest \
      ~{cond} \
      ~{file} \
      ~{lh_map} \
      ~{misc} \
      ~{mutex} \
      ~{para} \
      ~{t_a_list} \
      ~{th_map} \
      ~{path} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if defined(b_num) then ("-bnum " +  '"' + b_num + '"') else ""} \
      ~{if defined(msi_z) then ("-msiz " +  '"' + msi_z + '"') else ""} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if defined(iv) then ("-iv " +  '"' + iv + '"') else ""}
  >>>
  parameter_meta {
    rnd: ""
    b_num: ""
    msi_z: ""
    th: ""
    iv: ""
    cond: ""
    file: ""
    lh_map: ""
    misc: ""
    mutex: ""
    para: ""
    t_a_list: ""
    th_map: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}