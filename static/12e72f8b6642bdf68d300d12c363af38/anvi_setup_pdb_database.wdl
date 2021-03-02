version 1.0

task Anvisetuppdbdatabase {
  input {
    File? pdb_database_path
    Int? num_threads
    Boolean? update
    Boolean? reset
    String database_dot
  }
  command <<<
    anvi_setup_pdb_database \
      ~{database_dot} \
      ~{if defined(pdb_database_path) then ("--pdb-database-path " +  '"' + pdb_database_path + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if (reset) then "--reset" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pdb_database_path: "The path for the PDB database to be stored. If you\\nleave it as is without specifying anything, anvi'o\\nwill set up everything in a pre-defined default\\ndirectory. The advantage of using the default\\ndirectory at the time of set up is that every user of\\nanvi'o on a computer system will be using a single\\ndata directory, but then you may need to run the setup\\nprogram with superuser privileges. If you don't have\\nsuperuser privileges, then you can use this parameter\\nto tell anvi'o the location you wish to use to setup\\nyour database."
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast."
    update: "Use this flag if you would like to update your current"
    reset: "Remove all the previously stored files and start over.\\nIf something is feels wrong for some reason and if you\\nbelieve re-downloading files and setting them up could\\naddress the issue, this is the flag that will tell\\nanvi'o to act like a real computer scientist\\nchallenged with a computational problem.\\n"
    database_dot: "--skip-modeller-update"
  }
  output {
    File out_stdout = stdout()
  }
}