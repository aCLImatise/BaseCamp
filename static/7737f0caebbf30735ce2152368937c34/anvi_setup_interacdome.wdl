version 1.0

task Anvisetupinteracdome {
  input {
    File? interac_dome_data_dir
    Boolean? reset
  }
  command <<<
    anvi_setup_interacdome \
      ~{if defined(interac_dome_data_dir) then ("--interacdome-data-dir " +  '"' + interac_dome_data_dir + '"') else ""} \
      ~{if (reset) then "--reset" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    interac_dome_data_dir: "The path for the interacdome data to be stored. If you\\nleave it as is without specifying anything, anvi'o\\nwill set up everything in a pre-defined default\\ndirectory. The advantage of using the default\\ndirectory at the time of set up is that every user of\\nanvi'o on a computer system will be using a single\\ndata directory, but then you may need to run the setup\\nprogram with superuser privileges. If you don't have\\nsuperuser privileges, then you can use this parameter\\nto tell anvi'o the location you wish to use to setup\\nyour data. (default: None)"
    reset: "Remove all the previously stored files and start over.\\nIf something is feels wrong for some reason and if you\\nbelieve re-downloading files and setting them up could\\naddress the issue, this is the flag that will tell\\nanvi'o to act like a real computer scientist\\nchallenged with a computational problem. (default:\\nFalse)"
  }
  output {
    File out_stdout = stdout()
  }
}