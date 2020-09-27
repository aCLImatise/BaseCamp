version 1.0

task Cdhitdiv {
  input {
    String? i
    String? o
    Int? div
  }
  command <<<
    cd_hit_div \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(div) then ("-div " +  '"' + div + '"') else ""}
  >>>
  parameter_meta {
    i: ", required"
    o: ", required"
    div: "of divide, required"
  }
  output {
    File out_stdout = stdout()
  }
}