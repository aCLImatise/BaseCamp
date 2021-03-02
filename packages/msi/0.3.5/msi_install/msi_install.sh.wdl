version 1.0

task MsiInstallsh {
  input {
    String? _installupdate_software
    Directory? installupdate_files_directory
    Boolean? conda_installation_mode
    Boolean? install_msi_conda
    String msi_install_dots_h
  }
  command <<<
    msi_install_sh \
      ~{msi_install_dots_h} \
      ~{if defined(_installupdate_software) then ("-x " +  '"' + _installupdate_software + '"') else ""} \
      ~{if defined(installupdate_files_directory) then ("-i " +  '"' + installupdate_files_directory + '"') else ""} \
      ~{if (conda_installation_mode) then "-C" else ""} \
      ~{if (install_msi_conda) then "-E" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msi:0.3.5--1"
  }
  parameter_meta {
    _installupdate_software: ": install/update software."
    installupdate_files_directory: ": install/update all files to directory 'dir' (default: //MSI)"
    conda_installation_mode: "- Conda installation mode"
    install_msi_conda: "- install msi in a conda environment [test_msi_env]"
    msi_install_dots_h: "[-x all|tool_name -i toplevel_installation_folder]  "
  }
  output {
    File out_stdout = stdout()
  }
}