version 1.0

task RsatInstallensemblgenome {
  input {
    String install_ensembl_genome
    String util
    String package_dot
    String latest
    String analysis_dot
    String incomplete_dot
  }
  command <<<
    rsat install_ensembl_genome \
      ~{install_ensembl_genome} \
      ~{util} \
      ~{package_dot} \
      ~{latest} \
      ~{analysis_dot} \
      ~{incomplete_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    install_ensembl_genome: "[1mVERSION[0m"
    util: "[1mUSAGE[0m"
    package_dot: "[1mdownload-ensembl-features[0m"
    latest: "This corresponds to the lastest release of Ensembl. Beware: this\\nrelease is not guaranteed to be compatible with RSAT, in case\\nEnsembl would change their file formats or locations."
    analysis_dot: "This task is executed by running [33minstall-organism[0m."
    incomplete_dot: "[1m-dry[0m"
  }
  output {
    File out_stdout = stdout()
  }
}