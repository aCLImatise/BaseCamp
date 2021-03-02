from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bcbio_Vm_Py_Aws_Cluster_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_aws_cluster", base_command=["bcbio_vm.py", "aws", "cluster"], inputs=[ToolInput(tag="in_bootstrap", input_type=String(), position=0, doc=InputDocumentation(doc="Update a bcbio AWS system with the latest code and")), ToolInput(tag="in_tools", input_type=String(), position=1, doc=InputDocumentation(doc="command             Run a script on the bcbio frontend node inside a")), ToolInput(tag="in_ssh", input_type=String(), position=0, doc=InputDocumentation(doc="SSH to a bcbio cluster")), ToolInput(tag="in_start", input_type=String(), position=1, doc=InputDocumentation(doc="Start a bcbio cluster")), ToolInput(tag="in_setup", input_type=String(), position=2, doc=InputDocumentation(doc="Rerun cluster configuration steps")), ToolInput(tag="in_stop", input_type=String(), position=3, doc=InputDocumentation(doc="Stop a bcbio cluster"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Aws_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

