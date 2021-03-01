from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Alleyoop_Summary_V0_1_0 = CommandToolBuilder(tool="alleyoop_summary", base_command=["alleyoop", "summary"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_t_count_dir", input_type=Directory(optional=True), prefix="--tcountDir", doc=InputDocumentation(doc="Folder containing tcount files\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Filtered BAM files (produced by slamdunk filter or\nall)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleyoop_Summary_V0_1_0().translate("wdl", allow_empty_container=True)

