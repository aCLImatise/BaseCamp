version 1.0

task OvlDegrDist {
  input {
    Boolean? adjust_genome_length
    String? set_minimum_length
  }
  command <<<
    ovl-degr-dist \
      ~{true="-m" false="" adjust_genome_length} \
      ~{if defined(set_minimum_length) then ("-o " +  '"' + set_minimum_length + '"') else ""}
  >>>
  parameter_meta {
    adjust_genome_length: "Adjust genome length to get best match to distrib input from stdin"
    set_minimum_length: "Set minimum overlap length to <n> (default = 40)"
  }
}