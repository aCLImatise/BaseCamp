from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Psascan_V0_1_0 = CommandToolBuilder(tool="psascan", base_command=["psascan"], inputs=[ToolInput(tag="in_gap", input_type=File(optional=True), prefix="--gap", doc=InputDocumentation(doc="specify the file holding the gap array (default:\nFILE.sa5.gap)")), ToolInput(tag="in_mem", input_type=Int(optional=True), prefix="--mem", doc=InputDocumentation(doc="limit RAM usage to LIMIT MiB (default: 3072)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="specify the output file (default: FILE.sa5)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print detailed information during internal sufsort"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="specify the output file (default: FILE.sa5)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psascan_V0_1_0().translate("wdl", allow_empty_container=True)

