from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String

Bcbio_Vm_Py_Aws_Ansible_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_aws_ansible", base_command=["bcbio_vm.py", "aws", "ansible"], inputs=[ToolInput(tag="in_key_pair", input_type=Boolean(optional=True), prefix="--keypair", doc=InputDocumentation(doc="Create new keypair for access (default: False)")), ToolInput(tag="in_network", input_type=Float(optional=True), prefix="--network", doc=InputDocumentation(doc="network to use for the VPC, in CIDR notation\n(a.b.c.d/e) (default: 10.0.0.0/16)")), ToolInput(tag="in_cluster", input_type=String(optional=True), prefix="--cluster", doc=InputDocumentation(doc="base name for created VPC resources (default: bcbio)\n")), ToolInput(tag="in_zone", input_type=String(), position=0, doc=InputDocumentation(doc="AWS availability zone to create resources in (ie. us-\neast-1a)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Aws_Ansible_V0_1_0().translate("wdl", allow_empty_container=True)

