version 1.0

task Anvisetupncbicogs {
  input {
    File? cog_data_dir
    Boolean? reset
    Boolean? just_do_it
    String? clusterizing_runs_asking
    String it_dot
  }
  command <<<
    anvi_setup_ncbi_cogs \
      ~{it_dot} \
      ~{if defined(cog_data_dir) then ("--cog-data-dir " +  '"' + cog_data_dir + '"') else ""} \
      ~{if (reset) then "--reset" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""} \
      ~{if defined(clusterizing_runs_asking) then ("--if " +  '"' + clusterizing_runs_asking + '"') else ""}
  >>>
  parameter_meta {
    cog_data_dir: "The directory for COG data to be stored. If you leave\\nit as is without specifying anything, the default\\ndestination for the data directory will be used to set\\nthings up. The advantage of it is that everyone will\\nbe using a single data directory, but then you may\\nneed superuser privileges to do it. Using this\\nparameter you can choose the location of the data\\ndirectory somewhere you like. However, when it is time\\nto run COGs, you will need to remember that path and\\nprovide it to the program."
    reset: "Remove all the previously stored files and start over.\\nIf something is feels wrong for some reason and if you\\nbelieve re-downloading files and setting them up could\\naddress the issue, this is the flag that will tell\\nanvi'o to act like a real computer scientist\\nchallenged with a computational problem."
    just_do_it: "Don't bother me with questions or warnings, just do"
    clusterizing_runs_asking: "are clusterizing your runs, and asking for"
    it_dot: "-T NUM_THREADS, --num-threads NUM_THREADS"
  }
  output {
    File out_stdout = stdout()
  }
}