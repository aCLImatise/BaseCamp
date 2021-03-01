from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bcbio_Vm_Py_Install_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_install", base_command=["bcbio_vm.py", "install"], inputs=[ToolInput(tag="in_genomes", input_type=String(optional=True), prefix="--genomes", doc=InputDocumentation(doc="Genomes to download")), ToolInput(tag="in_aligners", input_type=String(optional=True), prefix="--aligners", doc=InputDocumentation(doc="Aligner indexes to download")), ToolInput(tag="in_data_target", input_type=String(optional=True), prefix="--datatarget", doc=InputDocumentation(doc="Data to install. Allows customization or install of\nextra data.")), ToolInput(tag="in_data", input_type=Boolean(optional=True), prefix="--data", doc=InputDocumentation(doc="Install or upgrade data dependencies")), ToolInput(tag="in_tools", input_type=Boolean(optional=True), prefix="--tools", doc=InputDocumentation(doc="Install or upgrade tool dependencies")), ToolInput(tag="in_wrapper", input_type=Boolean(optional=True), prefix="--wrapper", doc=InputDocumentation(doc="Update wrapper bcbio-nextgen-vm code")), ToolInput(tag="in_image", input_type=String(optional=True), prefix="--image", doc=InputDocumentation(doc="Docker image name to use, could point to compatible\npre-installed image.")), ToolInput(tag="in_cores", input_type=String(optional=True), prefix="--cores", doc=InputDocumentation(doc="Cores to use for parallel data prep processes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Install_V0_1_0().translate("wdl", allow_empty_container=True)

