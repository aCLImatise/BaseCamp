version 1.0

task Kcutiltest {
  input {
    Boolean? rnd
    Int? b_num
    Int? msi_z
    Int? th
    Int? iv
    String cond
    File var_file
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
      ~{var_file} \
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
  runtime {
    docker: "quay.io/biocontainers/kyototycoon:20170410--h896b458_0"
  }
  parameter_meta {
    rnd: ""
    b_num: ""
    msi_z: ""
    th: ""
    iv: ""
    cond: ""
    var_file: ""
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