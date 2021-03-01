from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bcbio_Vm_Py_Aws_Icel_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_aws_icel", base_command=["bcbio_vm.py", "aws", "icel"], inputs=[ToolInput(tag="in_create", input_type=String(), position=0, doc=InputDocumentation(doc="Create scratch filesystem using Intel Cloud Edition\nfor Lustre")), ToolInput(tag="in_fs_spec", input_type=String(), position=1, doc=InputDocumentation(doc="Get the filesystem spec for a running filesystem")), ToolInput(tag="in_mount", input_type=String(), position=2, doc=InputDocumentation(doc="Mount Lustre filesystem on all cluster nodes")), ToolInput(tag="in_unmount", input_type=String(), position=3, doc=InputDocumentation(doc="Unmount Lustre filesystem on all cluster nodes")), ToolInput(tag="in_stop", input_type=String(), position=4, doc=InputDocumentation(doc="Stop the running Lustre filesystem and clean up\nresources\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Aws_Icel_V0_1_0().translate("wdl", allow_empty_container=True)

