from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Network_Merge_V0_1_0 = CommandToolBuilder(tool="network_merge", base_command=["network_merge"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="multiple files are separated by commas")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="correlation coefficient cutoff (default: 0.5)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="correlation coefficient cutoff (default: 0.5)"))], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Network_Merge_V0_1_0().translate("wdl")

