version 1.0

task Anvisetuppfams {
  input {
    File? pfam_data_dir
    Boolean? reset
  }
  command <<<
    anvi_setup_pfams \
      ~{if defined(pfam_data_dir) then ("--pfam-data-dir " +  '"' + pfam_data_dir + '"') else ""} \
      ~{if (reset) then "--reset" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pfam_data_dir: "The directory for Pfam data to be stored. If you leave\\nit as is without specifying anything, the default\\ndestination for the data directory will be used to set\\nthings up. The advantage of it is that everyone will\\nbe using a single data directory, but then you may\\nneed superuser privileges to do it. Using this\\nparameter you can choose the location of the data\\ndirectory somewhere you like. However, when it is time\\nto run Pfam, you will need to remember that path and\\nprovide it to the program."
    reset: "This program by default attempts to use previously\\ndownloaded files in your Pfam data directory if there\\nare any. If something is wrong for some reason you can\\nuse this to tell anvi'o to remove everything, and\\nstart over.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}