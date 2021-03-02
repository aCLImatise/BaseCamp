from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pyrpipe_Diagnostic_Command_V0_1_0 = CommandToolBuilder(tool="pyrpipe_diagnostic_command", base_command=["pyrpipe_diagnostic", "command"], inputs=[ToolInput(tag="in_report", input_type=String(), position=0, doc=InputDocumentation(doc="Generate analysis report")), ToolInput(tag="in_shell", input_type=String(), position=1, doc=InputDocumentation(doc="Generate all commands to shell (bash) script")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="Subcommand to run report, shell,benchmark,multiqc,test"))], outputs=[], container="quay.io/biocontainers/pyrpipe:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyrpipe_Diagnostic_Command_V0_1_0().translate("wdl")

