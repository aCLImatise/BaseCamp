from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean

Msi_Install_Sh_V0_1_0 = CommandToolBuilder(tool="msi_install.sh", base_command=["msi_install.sh"], inputs=[ToolInput(tag="in__installupdate_software", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc=": install/update software.")), ToolInput(tag="in_installupdate_files_directory", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc=": install/update all files to directory 'dir' (default: //MSI)")), ToolInput(tag="in_conda_installation_mode", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="- Conda installation mode")), ToolInput(tag="in_install_msi_conda", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="- install msi in a conda environment [test_msi_env]")), ToolInput(tag="in_msi_install_dots_h", input_type=String(), position=0, doc=InputDocumentation(doc="[-x all|tool_name -i toplevel_installation_folder]  "))], outputs=[], container="quay.io/biocontainers/msi:0.3.5--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msi_Install_Sh_V0_1_0().translate("wdl")

