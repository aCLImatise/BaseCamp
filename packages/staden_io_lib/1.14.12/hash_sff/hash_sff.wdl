version 1.0

task HashSff {
  input {
    Boolean? t
    String? o
    String sff_file
  }
  command <<<
    hash_sff \
      ~{sff_file} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    o: ""
    sff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}