version 1.0

task NovoutilTile {
  input {
    Int? sets_read_default
    Int? s
    Int? n
    String novo_index
    String chr_name
  }
  command <<<
    novoutil tile \
      ~{novo_index} \
      ~{chr_name} \
      ~{if defined(sets_read_default) then ("-l " +  '"' + sets_read_default + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    sets_read_default: "Sets read length. Default 70.    -n 99     The maximum number of N's in a read. Default 30.    -s 9      The step size for tiled reads. Default 1."
    s: ""
    n: ""
    novo_index: ""
    chr_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}