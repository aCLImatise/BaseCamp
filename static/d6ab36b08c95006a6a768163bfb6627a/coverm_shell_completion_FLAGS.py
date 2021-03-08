from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Coverm_Shell_Completion_Flags_V0_1_0 = CommandToolBuilder(tool="coverm_shell_completion_FLAGS", base_command=["coverm", "shell-completion", "FLAGS"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/coverm:0.6.1--hc216eb9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverm_Shell_Completion_Flags_V0_1_0().translate("wdl")

