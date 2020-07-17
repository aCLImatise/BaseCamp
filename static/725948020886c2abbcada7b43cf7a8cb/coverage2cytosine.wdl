version 1.0

task Coverage2cytosine {
  input {
    File? genome_folder
    String? o
    String? var_input
  }
  command <<<
    coverage2cytosine \
      ~{var_input} \
      ~{if defined(genome_folder) then ("--genome_folder " +  '"' + genome_folder + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    genome_folder: ""
    o: ""
    var_input: ""
  }
}