#!/usr/bin/env cwl-runner

baseCommand:
- bootstrap.py
class: CommandLineTool
cwlVersion: v1.0
id: bootstrap.py
inputs:
- doc: The directory where FusionCatcher will be installed. Default is '/tmp/tmpg5gctayr/fusioncatcher'.
  id: installation_path
  inputBinding:
    prefix: --installation-path
  type: string
- doc: The FusionCatcher will be installed in 'prefix_directory/fusioncatcher'.
  id: prefix_path
  inputBinding:
    prefix: --prefix-path
  type: string
- doc: It forcibly installs (1) all the software tools, and (2) the Python modules,
    which are needed (even if they are already installed).
  id: install_all
  inputBinding:
    prefix: --install-all
  type: boolean
- doc: It forcibly only installs all the Python modules needed (even if they are already
    installed).
  id: install_all_py
  inputBinding:
    prefix: --install-all-py
  type: boolean
- doc: It forcibly only installs all the software tools needed (even if they are already
    installed).
  id: install_all_tools
  inputBinding:
    prefix: --install-all-tools
  type: boolean
- doc: It skips installing and testing all the dependencies, which are the (1) software
    tools, and (2) Python modules. Only the FusionCatcher scripts will be installed.
    Use this when there the internet connection is broken or not available.
  id: skip_dependencies
  inputBinding:
    prefix: --skip-dependencies
  type: boolean
- doc: It skips installing (and using) the BLAT aligner.
  id: skip_blat
  inputBinding:
    prefix: --skip-blat
  type: boolean
- doc: It answers automatically all questions with yes.
  id: yes
  inputBinding:
    prefix: --yes
  type: boolean
- doc: It lists all the needed dependencies. No installation is done!
  id: list_dependencies
  inputBinding:
    prefix: --list-dependencies
  type: boolean
- doc: It builds (and also some download is required) the build files for human organism,
    which are needed to run FusionCatcher. Default value is 'False'.
  id: build
  inputBinding:
    prefix: --build
  type: boolean
- doc: It downloads from <http://sourceforge.net/projects/fusioncatcher/files/> the
    build files for human organism, which are needed to run FusionCatcher. Default
    value is 'False'.
  id: download
  inputBinding:
    prefix: --download
  type: boolean
- doc: If specified and 'bootstrap.py' is run as root then 'bootstrap.py' will run
    'apt-get install' in order to install some Python libraries. Default value is
    'False'.
  id: root_apt_get_install
  inputBinding:
    prefix: --root-apt-get-install
  type: boolean
- doc: It installs the last version of SORT (which allows several CPUs to be used
    and compression of temporary files), LZOP compression, PICARD, VELVET, etc. Default
    value is 'False'.
  id: extra
  inputBinding:
    prefix: --extra
  type: boolean
- doc: By default all the software tools and Python modules are downloaded using internet.
    In case that one wishes to proceed with the install by using all the locally pre-downloaded
    software tools and Python modules this option should be used. It specifies the
    local path where all the software tools and Python modules are available and no
    internet connection will be used.
  id: local
  inputBinding:
    prefix: --local
  type: string
- doc: By default scripts belonging to FusionCatcher are downloaded using internet.
    In case that one wishes to proceed with the installation by using ONLY the FusionCatcher
    ZIP archive this option should be used. It specifies the local path where FusionCatcher
    archive is available and no internet connection will be used.
  id: local_fusion_catcher
  inputBinding:
    prefix: --local-fusioncatcher
  type: string
- doc: The log file where the commands executed by this script are written.
  id: log
  inputBinding:
    prefix: --log
  type: string
