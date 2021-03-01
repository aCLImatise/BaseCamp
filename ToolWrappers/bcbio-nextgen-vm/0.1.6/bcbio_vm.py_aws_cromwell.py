from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Array

Bcbio_Vm_Py_Aws_Cromwell_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_aws_cromwell", base_command=["bcbio_vm.py", "aws", "cromwell"], inputs=[ToolInput(tag="in_key_pair", input_type=String(optional=True), prefix="--keypair", doc=InputDocumentation(doc="Existing keypair to use for accessing AWS instances.")), ToolInput(tag="in_bucket", input_type=Int(optional=True), prefix="--bucket", doc=InputDocumentation(doc="S3 bucket to store Cromwell logs and execution files")), ToolInput(tag="in_zone", input_type=Array(t=String(), optional=True), prefix="--zone", doc=InputDocumentation(doc="AWS availability zones to create resources in\n(default: a, b in current region)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Aws_Cromwell_V0_1_0().translate("wdl", allow_empty_container=True)

