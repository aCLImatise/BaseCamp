version 1.0

task PanphlanDownloadPangenomepy {
  input {
    Boolean? v
    String? o
    String? i
  }
  command <<<
    panphlan_download_pangenome_py \
      ~{if (v) then "-v" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}