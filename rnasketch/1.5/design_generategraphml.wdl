version 1.0

task DesignGenerategraphml.py {
  input {
    Boolean? read_structures_constraints
    File? file
    String? write_graphml_file
  }
  command <<<
    design-generategraphml.py \
      ~{true="--input" false="" read_structures_constraints} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(write_graphml_file) then ("--output " +  '"' + write_graphml_file + '"') else ""}
  >>>
  parameter_meta {
    read_structures_constraints: "Read custom structures and sequence constraints from stdin"
    file: "Read file in *.inp format"
    write_graphml_file: "Write graphml file with the given filename."
  }
}