from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String

Alleyoop_Collapse_V0_1_0 = CommandToolBuilder(tool="alleyoop_collapse", base_command=["alleyoop", "collapse"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory for mapped BAM files.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Thread number (default: 1)\n")), ToolInput(tag="in_t_count", input_type=String(), position=0, doc=InputDocumentation(doc="Tcount file(s)"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for mapped BAM files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleyoop_Collapse_V0_1_0().translate("wdl", allow_empty_container=True)

