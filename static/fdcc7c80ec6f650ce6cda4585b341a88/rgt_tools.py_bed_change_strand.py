from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Rgt_Tools_Py_Bed_Change_Strand_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_change_strand", base_command=["rgt-tools.py", "bed_change_strand"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_define_threshold_bp", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Define the threshold of distance (default:0 bp")), ToolInput(tag="in_target_bed_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Target BED file")), ToolInput(tag="in_reverse_the_strand", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Reverse the strand")), ToolInput(tag="in_define_stand_regions", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="Define the stand for all regions"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Change_Strand_V0_1_0().translate("wdl", allow_empty_container=True)

