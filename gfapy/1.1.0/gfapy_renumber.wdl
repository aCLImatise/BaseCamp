version 1.0

task GfapyRenumber {
  input {
    String? out
    String gfa
  }
  command <<<
    gfapy-renumber \
      ~{gfa} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    out: "output GFA file [/dev/stdout]"
    gfa: "input GFA file"
  }
}