from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Rgt_Tools_Py_Bed_Extend_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_extend", base_command=["rgt-tools.py", "bed_extend"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_output_bed_name", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output BED name.")), ToolInput(tag="in_only_zero", input_type=Boolean(optional=True), prefix="--onlyzero", doc=InputDocumentation(doc="Extend only the zero-length regions")), ToolInput(tag="in_len", input_type=Int(optional=True), prefix="-len", doc=InputDocumentation(doc="Define the length to extend.")), ToolInput(tag="in_extend_center_directions", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Extend from the center to both directions.")), ToolInput(tag="in_extend_left_ends", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Extend from the left ends.")), ToolInput(tag="in_extend_right_ends", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Extend from the right ends.")), ToolInput(tag="in_up", input_type=Boolean(optional=True), prefix="-up", doc=InputDocumentation(doc="Extend from the upstream ends.")), ToolInput(tag="in_down", input_type=Boolean(optional=True), prefix="-down", doc=InputDocumentation(doc="Extend from the downstream ends."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Extend_V0_1_0().translate("wdl", allow_empty_container=True)

