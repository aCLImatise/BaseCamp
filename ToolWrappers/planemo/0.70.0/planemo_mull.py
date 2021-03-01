from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Planemo_Mull_V0_1_0 = CommandToolBuilder(tool="planemo_mull", base_command=["planemo", "mull"], inputs=[ToolInput(tag="in_cond_a_requirements", input_type=Boolean(optional=True), prefix="--conda_requirements", doc=InputDocumentation(doc="`` on the target tool(s).")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Recursively perform command for")), ToolInput(tag="in_mulled_namespace", input_type=String(optional=True), prefix="--mulled_namespace", doc=InputDocumentation(doc="Build a mulled image with the specified\nnamespace - defaults to biocontainers.\nGalaxy currently only recognizes images with\nthe namespace biocontainers.")), ToolInput(tag="in_mulled_command", input_type=String(optional=True), prefix="--mulled_command", doc=InputDocumentation(doc="Mulled action to perform for targets - this\ndefaults to 'build-and-test'.")), ToolInput(tag="in_cond_a_ensure_channels", input_type=String(optional=True), prefix="--conda_ensure_channels", doc=InputDocumentation(doc="Ensure conda is configured with specified\ncomma separated list of channels.")), ToolInput(tag="in_subdirectories_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--mulled_conda_version TEXT     Install a specific version of Conda before"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Mull_V0_1_0().translate("wdl", allow_empty_container=True)

