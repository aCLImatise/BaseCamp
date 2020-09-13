version 1.0

task PrintScaff {
  input {
    String? l
    String? f
  }
  command <<<
    printScaff \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    l: "[-dot -page -plot -unused -phys -oo -sum] [-detail]"
    f: "[-[no]merge] [-arachne <araprefix>]"
  }
  output {
    File out_stdout = stdout()
  }
}