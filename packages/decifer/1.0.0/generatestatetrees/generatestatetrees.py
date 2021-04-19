from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Generatestatetrees_V0_1_0 = CommandToolBuilder(tool="generatestatetrees", base_command=["generatestatetrees"], inputs=[ToolInput(tag="in_input_state_tree", input_type=File(optional=True), prefix="-S", doc=InputDocumentation(doc="Input state tree file")), ToolInput(tag="in_ss", input_type=File(optional=True), prefix="-SS", doc=InputDocumentation(doc="Output state tree file")), ToolInput(tag="in_max_cn", input_type=Int(optional=True), prefix="-maxCN", doc=InputDocumentation(doc="Maximum number of copy number events (default: 2)")), ToolInput(tag="in_maxx_y", input_type=Int(optional=True), prefix="-maxXY", doc=InputDocumentation(doc="Maximum number of maternal/paternal copies (default: 2)\n"))], outputs=[ToolOutput(tag="out_ss", output_type=File(optional=True), selector=InputSelector(input_to_select="in_ss", type_hint=File()), doc=OutputDocumentation(doc="Output state tree file"))], container="quay.io/biocontainers/decifer:1.0.0--py27h36946f9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generatestatetrees_V0_1_0().translate("wdl")

