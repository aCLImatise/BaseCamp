version 1.0

task Digestdb {
  input {
    Boolean? num_set_minimum
    Boolean? num_set_number
    Boolean? str_residues_cleave
    Boolean? str_dons_digestion
    Boolean? str_static_modifications
    Boolean? num_mass_type
    String database_file
  }
  command <<<
    digestdb \
      ~{database_file} \
      ~{true="-l" false="" num_set_minimum} \
      ~{true="-m" false="" num_set_number} \
      ~{true="-r" false="" str_residues_cleave} \
      ~{true="-n" false="" str_dons_digestion} \
      ~{true="-M" false="" str_static_modifications} \
      ~{true="-t" false="" num_mass_type}
  >>>
  parameter_meta {
    num_set_minimum: "<num>     set minimum peptide mass (<num> is a float; default=800.00)"
    num_set_number: "<num>     set number of missed cleavages (<num> is an int; default=1)"
    str_residues_cleave: "<str>     residues to cleave after (default=\"RK\" for trypsin)"
    str_dons_digestion: "<str>     don't cleave if next AA (default=\"P\" for trypsin) ** only c-term cleavages are support right now so there's no AspN digestion. ** use a dash (-) or leave <str> blank for a null character."
    str_static_modifications: "<str>     static modifications, comma separated of form <mass>@<residue> for example -M57.021@C,15.995@M"
    num_mass_type: "<num>     mass type, 0=average, 1=monoisotopic (default)"
    database_file: ""
  }
}