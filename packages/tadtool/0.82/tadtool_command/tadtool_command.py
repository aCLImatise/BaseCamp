from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tadtool_Command_V0_1_0 = CommandToolBuilder(tool="tadtool_command", base_command=["tadtool", "command"], inputs=[ToolInput(tag="in_plot", input_type=String(), position=0, doc=InputDocumentation(doc="Main interactive TADtool plotting window")), ToolInput(tag="in_tads", input_type=String(), position=1, doc=InputDocumentation(doc="Call TADs with pre-defined parameters")), ToolInput(tag="in_subset", input_type=String(), position=2, doc=InputDocumentation(doc="Reduce a matrix to a smaller region.")), ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="Subcommand to run"))], outputs=[], container="quay.io/biocontainers/tadtool:0.82--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tadtool_Command_V0_1_0().translate("wdl")

