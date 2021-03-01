from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

_Union_V0_1_0 = CommandToolBuilder(tool="_union", base_command=["_union"], inputs=[ToolInput(tag="in_overlap_file", input_type=File(optional=True), prefix="-overlapfile", doc=InputDocumentation(doc="outfile    [*.union] Sequence overlaps output file\n(optional)")), ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="-feature", doc=InputDocumentation(doc="boolean    [N] Use feature information")), ToolInput(tag="in_source", input_type=Boolean(optional=True), prefix="-source", doc=InputDocumentation(doc="boolean    [N] Create source features")), ToolInput(tag="in_find_overlap", input_type=Boolean(optional=True), prefix="-findoverlap", doc=InputDocumentation(doc="boolean    [N] Look for overlaps when joining"))], outputs=[ToolOutput(tag="out_overlap_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_overlap_file", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.union] Sequence overlaps output file\n(optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Union_V0_1_0().translate("wdl", allow_empty_container=True)

