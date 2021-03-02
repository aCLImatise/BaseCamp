from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Directory

Kssd_Set_V0_1_0 = CommandToolBuilder(tool="kssd_set", base_command=["kssd", "set"], inputs=[ToolInput(tag="in_union", input_type=Boolean(optional=True), prefix="--union", doc=InputDocumentation(doc="get union set of the sketches.")), ToolInput(tag="in_int_sect", input_type=String(optional=True), prefix="--intsect", doc=InputDocumentation(doc="intersect with the pan-sketch for all input\nsketches.")), ToolInput(tag="in_subtract", input_type=String(optional=True), prefix="--subtract", doc=InputDocumentation(doc="subtract the pan-sketch from all input sketches.")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="specify the output directory.")), ToolInput(tag="in_option_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_combined_sketch", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="specify the output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kssd_Set_V0_1_0().translate("wdl", allow_empty_container=True)

