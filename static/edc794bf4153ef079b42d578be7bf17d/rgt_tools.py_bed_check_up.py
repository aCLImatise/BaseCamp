from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Rgt_Tools_Py_Bed_Check_Up_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_check_up", base_command=["rgt-tools.py", "bed_check_up"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_target_bed_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Target BED file")), ToolInput(tag="in_define_length_bp", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Define the length (bp) to detect")), ToolInput(tag="in_organism", input_type=String(optional=True), prefix="-organism", doc=InputDocumentation(doc="Define the organism"))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Check_Up_V0_1_0().translate("wdl", allow_empty_container=True)

