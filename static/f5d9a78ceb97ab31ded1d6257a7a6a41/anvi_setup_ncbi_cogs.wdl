version 1.0

task Anvisetupncbicogs {
  input {
    Int? cog_version
    File? cog_data_dir
    Boolean? reset
    Boolean? just_do_it
    Int? num_threads
  }
  command <<<
    anvi_setup_ncbi_cogs \
      ~{if defined(cog_version) then ("--cog-version " +  '"' + cog_version + '"') else ""} \
      ~{if defined(cog_data_dir) then ("--cog-data-dir " +  '"' + cog_data_dir + '"') else ""} \
      ~{if (reset) then "--reset" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    cog_version: "COG version. The default is the latest version, which\\nis COG20, meaning that anvi'o will use the NCBI's 2020\\nrelease of COGs to setup the database and run it on\\ncontigs databases. There is also an older version of\\nCOGs from 2014. If you would like anvi'o to work with\\nthat one, please use COG14 as a parameter. On a single\\ncomputer you can have both, and on a single contigs\\ndatabase you can run both. Cool and confusing. The\\nanvi'o way. (default: None)"
    cog_data_dir: "The directory for COG data to be stored. If you leave\\nit as is without specifying anything, the default\\ndestination for the data directory will be used to set\\nthings up. The advantage of it is that everyone will\\nbe using a single data directory, but then you may\\nneed superuser privileges to do it. Using this\\nparameter you can choose the location of the data\\ndirectory somewhere you like. However, when it is time\\nto run COGs, you will need to remember that path and\\nprovide it to the program. (default: None)"
    reset: "Remove all the previously stored files and start over.\\nIf something is feels wrong for some reason and if you\\nbelieve re-downloading files and setting them up could\\naddress the issue, this is the flag that will tell\\nanvi'o to act like a real computer scientist\\nchallenged with a computational problem. (default:\\nFalse)"
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast. (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}