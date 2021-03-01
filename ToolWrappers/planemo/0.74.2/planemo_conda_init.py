from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Planemo_Conda_Init_V0_1_0 = CommandToolBuilder(tool="planemo_conda_init", base_command=["planemo", "conda_init"], inputs=[ToolInput(tag="in_cond_a_prefix", input_type=Directory(optional=True), prefix="--conda_prefix", doc=InputDocumentation(doc="Conda prefix to use for conda dependency")), ToolInput(tag="in_cond_a_debug", input_type=Boolean(optional=True), prefix="--conda_debug", doc=InputDocumentation(doc="Enable more verbose conda logging.")), ToolInput(tag="in_cond_a_ensure_channels", input_type=String(optional=True), prefix="--conda_ensure_channels", doc=InputDocumentation(doc="Ensure conda is configured with specified\ncomma separated list of channels.")), ToolInput(tag="in_cond_a_use_local", input_type=Boolean(optional=True), prefix="--conda_use_local", doc=InputDocumentation(doc="Use locally built packages while building\nConda environments.")), ToolInput(tag="in_commands_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--conda_exec FILE               Location of conda executable."))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Conda_Init_V0_1_0().translate("wdl")

