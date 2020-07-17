version 1.0

task Bootstrap.py {
  input {
    String? installation_path
    String? prefix_path
    Boolean? install_all
    Boolean? install_all_py
    Boolean? install_all_tools
    Boolean? skip_dependencies
    Boolean? skip_blat
    Boolean? yes
    Boolean? list_dependencies
    Boolean? build
    Boolean? download
    Boolean? root_apt_get_install
    Boolean? extra
    String? local
    String? local_fusion_catcher
    String? log
  }
  command <<<
    bootstrap.py \
      ~{if defined(installation_path) then ("--installation-path " +  '"' + installation_path + '"') else ""} \
      ~{if defined(prefix_path) then ("--prefix-path " +  '"' + prefix_path + '"') else ""} \
      ~{true="--install-all" false="" install_all} \
      ~{true="--install-all-py" false="" install_all_py} \
      ~{true="--install-all-tools" false="" install_all_tools} \
      ~{true="--skip-dependencies" false="" skip_dependencies} \
      ~{true="--skip-blat" false="" skip_blat} \
      ~{true="--yes" false="" yes} \
      ~{true="--list-dependencies" false="" list_dependencies} \
      ~{true="--build" false="" build} \
      ~{true="--download" false="" download} \
      ~{true="--root-apt-get-install" false="" root_apt_get_install} \
      ~{true="--extra" false="" extra} \
      ~{if defined(local) then ("--local " +  '"' + local + '"') else ""} \
      ~{if defined(local_fusion_catcher) then ("--local-fusioncatcher " +  '"' + local_fusion_catcher + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    installation_path: "The directory where FusionCatcher will be installed. Default is '/tmp/tmpr7lyfvkf/fusioncatcher'."
    prefix_path: "The FusionCatcher will be installed in 'prefix_directory/fusioncatcher'."
    install_all: "It forcibly installs (1) all the software tools, and (2) the Python modules, which are needed (even if they are already installed)."
    install_all_py: "It forcibly only installs all the Python modules needed (even if they are already installed)."
    install_all_tools: "It forcibly only installs all the software tools needed (even if they are already installed)."
    skip_dependencies: "It skips installing and testing all the dependencies, which are the (1) software tools, and (2) Python modules. Only the FusionCatcher scripts will be installed. Use this when there the internet connection is broken or not available."
    skip_blat: "It skips installing (and using) the BLAT aligner."
    yes: "It answers automatically all questions with yes."
    list_dependencies: "It lists all the needed dependencies. No installation is done!"
    build: "It builds (and also some download is required) the build files for human organism, which are needed to run FusionCatcher. Default value is 'False'."
    download: "It downloads from <http://sourceforge.net/projects/fusioncatcher/files/> the build files for human organism, which are needed to run FusionCatcher. Default value is 'False'."
    root_apt_get_install: "If specified and 'bootstrap.py' is run as root then 'bootstrap.py' will run 'apt-get install' in order to install some Python libraries. Default value is 'False'."
    extra: "It installs the last version of SORT (which allows several CPUs to be used and compression of temporary files), LZOP compression, PICARD, VELVET, etc. Default value is 'False'."
    local: "By default all the software tools and Python modules are downloaded using internet. In case that one wishes to proceed with the install by using all the locally pre-downloaded software tools and Python modules this option should be used. It specifies the local path where all the software tools and Python modules are available and no internet connection will be used."
    local_fusion_catcher: "By default scripts belonging to FusionCatcher are downloaded using internet. In case that one wishes to proceed with the installation by using ONLY the FusionCatcher ZIP archive this option should be used. It specifies the local path where FusionCatcher archive is available and no internet connection will be used."
    log: "The log file where the commands executed by this script are written."
  }
}