version 1.0

task NovoutilTile {
  input {
    String? sets_read_default
    String? n
    String? s
    String novo_index
    String chr_name
  }
  command <<<
    novoutil tile \
      ~{novo_index} \
      ~{chr_name} \
      ~{if defined(sets_read_default) then ("-l " +  '"' + sets_read_default + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    sets_read_default: "Sets read length. Default 70.    -n 99     The maximum number of N's in a read. Default 30.    -s 9      The step size for tiled reads. Default 1."
    n: ""
    s: ""
    novo_index: ""
    chr_name: ""
  }
}