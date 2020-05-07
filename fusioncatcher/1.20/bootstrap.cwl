class: CommandLineTool
id: bootstrap.py.cwl
inputs:
- id: installation_path
  doc: The directory where FusionCatcher will be installed. Default is '/tmp/tmpg5gctayr/fusioncatcher'.
  type: string
  inputBinding:
    prefix: --installation-path
- id: prefix_path
  doc: The FusionCatcher will be installed in 'prefix_directory/fusioncatcher'.
  type: string
  inputBinding:
    prefix: --prefix-path
- id: install_all
  doc: It forcibly installs (1) all the software tools, and (2) the Python modules,
    which are needed (even if they are already installed).
  type: boolean
  inputBinding:
    prefix: --install-all
- id: install_all_py
  doc: It forcibly only installs all the Python modules needed (even if they are already
    installed).
  type: boolean
  inputBinding:
    prefix: --install-all-py
- id: install_all_tools
  doc: It forcibly only installs all the software tools needed (even if they are already
    installed).
  type: boolean
  inputBinding:
    prefix: --install-all-tools
- id: skip_dependencies
  doc: It skips installing and testing all the dependencies, which are the (1) software
    tools, and (2) Python modules. Only the FusionCatcher scripts will be installed.
    Use this when there the internet connection is broken or not available.
  type: boolean
  inputBinding:
    prefix: --skip-dependencies
- id: skip_blat
  doc: It skips installing (and using) the BLAT aligner.
  type: boolean
  inputBinding:
    prefix: --skip-blat
- id: yes
  doc: It answers automatically all questions with yes.
  type: boolean
  inputBinding:
    prefix: --yes
- id: list_dependencies
  doc: It lists all the needed dependencies. No installation is done!
  type: boolean
  inputBinding:
    prefix: --list-dependencies
- id: build
  doc: It builds (and also some download is required) the build files for human organism,
    which are needed to run FusionCatcher. Default value is 'False'.
  type: boolean
  inputBinding:
    prefix: --build
- id: download
  doc: It downloads from <http://sourceforge.net/projects/fusioncatcher/files/> the
    build files for human organism, which are needed to run FusionCatcher. Default
    value is 'False'.
  type: boolean
  inputBinding:
    prefix: --download
- id: root_apt_get_install
  doc: If specified and 'bootstrap.py' is run as root then 'bootstrap.py' will run
    'apt-get install' in order to install some Python libraries. Default value is
    'False'.
  type: boolean
  inputBinding:
    prefix: --root-apt-get-install
- id: extra
  doc: It installs the last version of SORT (which allows several CPUs to be used
    and compression of temporary files), LZOP compression, PICARD, VELVET, etc. Default
    value is 'False'.
  type: boolean
  inputBinding:
    prefix: --extra
- id: local
  doc: By default all the software tools and Python modules are downloaded using internet.
    In case that one wishes to proceed with the install by using all the locally pre-downloaded
    software tools and Python modules this option should be used. It specifies the
    local path where all the software tools and Python modules are available and no
    internet connection will be used.
  type: string
  inputBinding:
    prefix: --local
- id: local_fusion_catcher
  doc: By default scripts belonging to FusionCatcher are downloaded using internet.
    In case that one wishes to proceed with the installation by using ONLY the FusionCatcher
    ZIP archive this option should be used. It specifies the local path where FusionCatcher
    archive is available and no internet connection will be used.
  type: string
  inputBinding:
    prefix: --local-fusioncatcher
- id: log
  doc: The log file where the commands executed by this script are written.
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- bootstrap.py
