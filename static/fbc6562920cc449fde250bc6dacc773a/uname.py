from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Uname_V0_1_0 = CommandToolBuilder(tool="uname", base_command=["uname"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="print all information, in the following order,\nexcept omit -p and -i if unknown:")), ToolInput(tag="in_kernel_name", input_type=Boolean(optional=True), prefix="--kernel-name", doc=InputDocumentation(doc="print the kernel name")), ToolInput(tag="in_node_name", input_type=Boolean(optional=True), prefix="--nodename", doc=InputDocumentation(doc="print the network node hostname")), ToolInput(tag="in_kernel_release", input_type=Boolean(optional=True), prefix="--kernel-release", doc=InputDocumentation(doc="print the kernel release")), ToolInput(tag="in_kernel_version", input_type=Boolean(optional=True), prefix="--kernel-version", doc=InputDocumentation(doc="print the kernel version")), ToolInput(tag="in_machine", input_type=Boolean(optional=True), prefix="--machine", doc=InputDocumentation(doc="print the machine hardware name")), ToolInput(tag="in_processor", input_type=Boolean(optional=True), prefix="--processor", doc=InputDocumentation(doc="print the processor type (non-portable)")), ToolInput(tag="in_hardware_platform", input_type=Boolean(optional=True), prefix="--hardware-platform", doc=InputDocumentation(doc="print the hardware platform (non-portable)")), ToolInput(tag="in_operating_system", input_type=Boolean(optional=True), prefix="--operating-system", doc=InputDocumentation(doc="print the operating system"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uname_V0_1_0().translate("wdl", allow_empty_container=True)

