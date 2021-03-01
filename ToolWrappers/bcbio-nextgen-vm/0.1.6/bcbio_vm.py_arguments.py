from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bcbio_Vm_Py_Arguments_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_arguments", base_command=["bcbio_vm.py", "arguments"], inputs=[ToolInput(tag="in_datadir", input_type=String(optional=True), prefix="--datadir", doc=InputDocumentation(doc="")), ToolInput(tag="in_bc_bio_v_mdot_py", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Arguments_V0_1_0().translate("wdl", allow_empty_container=True)

