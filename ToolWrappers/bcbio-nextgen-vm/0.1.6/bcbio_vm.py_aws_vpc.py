from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String, Float

Bcbio_Vm_Py_Aws_Vpc_V0_1_0 = CommandToolBuilder(tool="bcbio_vm.py_aws_vpc", base_command=["bcbio_vm.py", "aws", "vpc"], inputs=[ToolInput(tag="in_e_config", input_type=File(optional=True), prefix="--econfig", doc=InputDocumentation(doc="Elasticluster bcbio configuration file (default:\n/root/.bcbio/elasticluster/config)")), ToolInput(tag="in_region", input_type=Int(optional=True), prefix="--region", doc=InputDocumentation(doc="EC2 region to create VPC in (defaults to us-east-1)\n(default: us-east-1)")), ToolInput(tag="in_recreate", input_type=Boolean(optional=True), prefix="--recreate", doc=InputDocumentation(doc="Remove and recreate the VPC, destroying all AWS\nresources contained in it (default: False)")), ToolInput(tag="in_cluster", input_type=String(optional=True), prefix="--cluster", doc=InputDocumentation(doc="elasticluster cluster name (default: bcbio)")), ToolInput(tag="in_network", input_type=Float(optional=True), prefix="--network", doc=InputDocumentation(doc="network to use for the VPC, in CIDR notation\n(a.b.c.d/e) (default: 10.0.0.0/16)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Vm_Py_Aws_Vpc_V0_1_0().translate("wdl", allow_empty_container=True)

