version 1.0

task BpAacomp.pl {
  input {
    String? f
    String aa_comp
    File filename
  }
  command <<<
    bp_aacomp.pl \
      ~{aa_comp} \
      ~{filename} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    aa_comp: ""
    filename: ""
  }
}