version 1.0

task Kcutiltest {
  input {
    String? th
    String? iv
    String mutex
    String rnum
  }
  command <<<
    kcutiltest \
      ~{mutex} \
      ~{rnum} \
      ~{if defined(th) then ("-th " +  '"' + th + '"') else ""} \
      ~{if defined(iv) then ("-iv " +  '"' + iv + '"') else ""}
  >>>
  parameter_meta {
    th: ""
    iv: ""
    mutex: ""
    rnum: ""
  }
}