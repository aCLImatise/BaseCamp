version 1.0

task AnviSetupPfams {
  input {
    String? pfam_data_dir
    Boolean? reset
  }
  command <<<
    anvi-setup-pfams \
      ~{if defined(pfam_data_dir) then ("--pfam-data-dir " +  '"' + pfam_data_dir + '"') else ""} \
      ~{true="--reset" false="" reset}
  >>>
  parameter_meta {
    pfam_data_dir: "The directory for Pfam data to be stored. If you leave it as is without specifying anything, the default destination for the data directory will be used to set things up. The advantage of it is that everyone will be using a single data directory, but then you may need superuser privileges to do it. Using this parameter you can choose the location of the data directory somewhere you like. However, when it is time to run Pfam, you will need to remember that path and provide it to the program."
    reset: "This program by default attempts to use previously downloaded files in your Pfam data directory if there are any. If something is wrong for some reason you can use this to tell anvi'o to remove everything, and start over."
  }
}