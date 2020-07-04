version 1.0

task MashtreeInit.pl {
  input {
    String? o
  }
  command <<<
    mashtree_init.pl \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
  }
}