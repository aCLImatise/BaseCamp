from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Singularity_Oci_Kill_V0_1_0 = CommandToolBuilder(tool="singularity_oci_kill", base_command=["singularity", "oci", "kill"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="kill container process with SIGKILL")), ToolInput(tag="in_signal", input_type=String(optional=True), prefix="--signal", doc=InputDocumentation(doc="signal sent to the container (default 'SIGTERM')")), ToolInput(tag="in_timeout", input_type=Int(optional=True), prefix="--timeout", doc=InputDocumentation(doc="timeout in second before killing container")), ToolInput(tag="in_kill", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Oci_Kill_V0_1_0().translate("wdl", allow_empty_container=True)

