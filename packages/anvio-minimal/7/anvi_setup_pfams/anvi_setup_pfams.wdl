version 1.0

task Anvisetuppfams {
  input {
    File? pfam_data_dir
    Boolean? reset
    Float? pfam_version
  }
  command <<<
    anvi_setup_pfams \
      ~{if defined(pfam_data_dir) then ("--pfam-data-dir " +  '"' + pfam_data_dir + '"') else ""} \
      ~{if (reset) then "--reset" else ""} \
      ~{if defined(pfam_version) then ("--pfam-version " +  '"' + pfam_version + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pfam_data_dir: "The directory for Pfam data to be stored. If you leave\\nit as is without specifying anything, the default\\ndestination for the data directory will be used to set\\nthings up. The advantage of it is that everyone will\\nbe using a single data directory, but then you may\\nneed superuser privileges to do it. Using this\\nparameter you can choose the location of the data\\ndirectory somewhere you like. However, when it is time\\nto run Pfam, you will need to remember that path and\\nprovide it to the program. (default: None)"
    reset: "This program by default attempts to use previously\\ndownloaded files in your Pfam data directory if there\\nare any. If something is wrong for some reason you can\\nuse this to tell anvi'o to remove everything, and\\nstart over. (default: False)"
    pfam_version: "By default, the most current version available will be\\ndownloaded. If you have specific tastes for a\\ndifferent version, you can provide it here. For\\nexample, `31.0`. Here are all possible versions:\\nftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/\\n(default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}