from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Rgt_Tools_Py_Bed_Remove_If_Overlap_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_remove_if_overlap", base_command=["rgt-tools.py", "bed_remove_if_overlap"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_define_bed_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Define BED file for target regions")), ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="Keep the overlapped regions, and remove the non-overlapped")), ToolInput(tag="in_ones_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-b, --block  Read and write BED12 format."))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Remove_If_Overlap_V0_1_0().translate("wdl", allow_empty_container=True)

