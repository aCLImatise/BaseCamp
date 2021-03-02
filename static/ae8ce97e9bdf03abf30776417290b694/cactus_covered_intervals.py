from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Cactus_Covered_Intervals_V0_1_0 = CommandToolBuilder(tool="cactus_covered_intervals", base_command=["cactus_covered_intervals"], inputs=[ToolInput(tag="in_query_offsets", input_type=Boolean(optional=True), prefix="--queryoffsets", doc=InputDocumentation(doc="input query names contain offsets, as described below\n(by default input query names do not contain offsets)")), ToolInput(tag="in_mark_end", input_type=File(optional=True), prefix="--markend", doc=InputDocumentation(doc="write a comment at the end of the output file")), ToolInput(tag="in_progress", input_type=String(optional=True), prefix="--progress", doc=InputDocumentation(doc="report each chromosome as we encounter it"))], outputs=[ToolOutput(tag="out_mark_end", output_type=File(optional=True), selector=InputSelector(input_to_select="in_mark_end", type_hint=File()), doc=OutputDocumentation(doc="write a comment at the end of the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Covered_Intervals_V0_1_0().translate("wdl", allow_empty_container=True)

