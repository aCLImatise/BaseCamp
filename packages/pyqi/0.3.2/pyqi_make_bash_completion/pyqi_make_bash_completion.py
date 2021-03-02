from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Pyqi_Make_Bash_Completion_V0_1_0 = CommandToolBuilder(tool="pyqi_make_bash_completion", base_command=["pyqi", "make-bash-completion"], inputs=[ToolInput(tag="in_command_config_module", input_type=String(optional=True), prefix="--command-config-module", doc=InputDocumentation(doc="CLI command configuration module [REQUIRED]")), ToolInput(tag="in_driver_name", input_type=String(optional=True), prefix="--driver-name", doc=InputDocumentation(doc="name of the driver script [REQUIRED]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output-fp", doc=InputDocumentation(doc="output filepath [REQUIRED]\n"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="output filepath [REQUIRED]\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyqi_Make_Bash_Completion_V0_1_0().translate("wdl", allow_empty_container=True)

