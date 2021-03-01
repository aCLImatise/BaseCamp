from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bcbio_Vm_Py_Aws_Info_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_aws_info", base_command=["bcbio_vm.py", "aws", "info"], inputs=[ToolInput(tag="in_e_config", input_type=File(optional=True), prefix="--econfig", doc=InputDocumentation(doc="Elasticluster bcbio configuration file")), ToolInput(tag="in_cluster", input_type=String(optional=True), prefix="--cluster", doc=InputDocumentation(doc="elasticluster cluster name\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Aws_Info_V0_1_0().translate("wdl", allow_empty_container=True)

