from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Bcbio_Vm_Py_Aws_Iam_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_aws_iam", base_command=["bcbio_vm.py", "aws", "iam"], inputs=[ToolInput(tag="in_e_config", input_type=File(optional=True), prefix="--econfig", doc=InputDocumentation(doc="Elasticluster bcbio configuration file")), ToolInput(tag="in_region", input_type=Int(optional=True), prefix="--region", doc=InputDocumentation(doc="EC2 region to create IAM user in (defaults to us-east-1)")), ToolInput(tag="in_recreate", input_type=Boolean(optional=True), prefix="--recreate", doc=InputDocumentation(doc="Recreate current IAM user access keys")), ToolInput(tag="in_no_create", input_type=Boolean(optional=True), prefix="--nocreate", doc=InputDocumentation(doc="Do not create a new IAM user, just generate a\nconfiguration file. Useful for users without full\npermissions to IAM.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Aws_Iam_V0_1_0().translate("wdl", allow_empty_container=True)

