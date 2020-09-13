version 1.0

task Gfapyrenumber {
  input {
    File? out
    String gfa
  }
  command <<<
    gfapy_renumber \
      ~{gfa} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    out: "output GFA file [/dev/stdout]"
    gfa: "input GFA file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}