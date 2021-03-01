from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bcbio_Vm_Py_Cwlrun_Directory_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_cwlrun_directory", base_command=["bcbio_vm.py", "cwlrun", "directory"], inputs=[ToolInput(tag="in_no_container", input_type=Boolean(optional=True), prefix="--no-container", doc=InputDocumentation(doc="")), ToolInput(tag="in_bc_bio_v_mdot_py", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cwl_run", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Cwlrun_Directory_V0_1_0().translate("wdl", allow_empty_container=True)

