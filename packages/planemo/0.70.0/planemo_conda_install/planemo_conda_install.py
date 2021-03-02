from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Planemo_Conda_Install_V0_1_0 = CommandToolBuilder(tool="planemo_conda_install", base_command=["planemo", "conda_install"], inputs=[ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Recursively perform command for")), ToolInput(tag="in_cond_a_debug", input_type=Boolean(optional=True), prefix="--conda_debug", doc=InputDocumentation(doc="Enable more verbose conda logging.")), ToolInput(tag="in_cond_a_ensure_channels", input_type=String(optional=True), prefix="--conda_ensure_channels", doc=InputDocumentation(doc="Ensure conda is configured with specified\ncomma separated list of channels.")), ToolInput(tag="in_cond_a_use_local", input_type=Boolean(optional=True), prefix="--conda_use_local", doc=InputDocumentation(doc="Use locally built packages while building\nConda environments.")), ToolInput(tag="in_global", input_type=Boolean(optional=True), prefix="--global", doc=InputDocumentation(doc="Install Conda dependencies globally instead\nof in requirement specific environments\npackaged for tools. If the Conda bin\ndirectory is on your PATH, tools may still\nuse binaries but this is more designed for\ninteractive testing and debugging.")), ToolInput(tag="in_no_cond_a_auto_in_it", input_type=Boolean(optional=True), prefix="--no_conda_auto_init", doc=InputDocumentation(doc="Conda dependency resolution for Galaxy will\nauto install conda itself using miniconda if\nnot availabe on conda_prefix.")), ToolInput(tag="in_subdirectories_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--conda_prefix DIRECTORY        Conda prefix to use for conda dependency")), ToolInput(tag="in_commands_dot", input_type=String(), position=1, doc=InputDocumentation(doc="--conda_exec FILE               Location of conda executable."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Conda_Install_V0_1_0().translate("wdl", allow_empty_container=True)

