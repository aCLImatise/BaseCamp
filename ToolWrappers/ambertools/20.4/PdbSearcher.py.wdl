version 1.0

task PdbSearcherpy {
  input {
    String? ion
    File? list
    File? env
    File? sum
    Float? cut
  }
  command <<<
    PdbSearcher_py \
      ~{if defined(ion) then ("--ion " +  '"' + ion + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(env) then ("--env " +  '"' + env + '"') else ""} \
      ~{if defined(sum) then ("--sum " +  '"' + sum + '"') else ""} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ion: "Element symbol of ion, e.g. Zn"
    list: "List file name, list file contains one PDB file name\\nper line"
    env: "Environment file name. An environment file is used to\\nstore the metal center environment information such as\\nligating atoms, distance, geometry etc. For each bond,\\nthere is a record."
    sum: "Summary file name. A summary file is used to store the\\nmetal center summary information such as metal center\\ngeometry, ligating residues etc. For each metal center\\nthere is a record."
    cut: "Optional. The cut off value used to detect the bond\\nbetween metal ion and ligating atoms. The unit is\\nAngstroms. If there is no value specified, the default\\nalgorithm will be used. The default algorithm\\nrecognizes the bond when its distance is no less than\\n0.1 (smaller than 0.1 usually indicates a low quality\\nstructure) and no bigger than the covalent radius sum\\nof the two atoms with a tolerance of 0.4.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}