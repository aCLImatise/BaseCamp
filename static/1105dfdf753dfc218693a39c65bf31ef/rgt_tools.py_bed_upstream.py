from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Rgt_Tools_Py_Bed_Upstream_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_upstream", base_command=["rgt-tools.py", "bed_upstream"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED file")), ToolInput(tag="in_define_length_defaultbp", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Define length (default:100bp)")), ToolInput(tag="in_define_distance_defaultbp", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Define distance (default:100bp)")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="-min", doc=InputDocumentation(doc="Define minimum length of gene to filter out the small\ngenes (default:0)")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Reverse the strand.")), ToolInput(tag="in_downstream", input_type=Boolean(optional=True), prefix="--downstream", doc=InputDocumentation(doc="Find downstream regions instead of upstream."))], outputs=[ToolOutput(tag="out_output_bed_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_bed_file", type_hint=File()), doc=OutputDocumentation(doc="Output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Upstream_V0_1_0().translate("wdl", allow_empty_container=True)

