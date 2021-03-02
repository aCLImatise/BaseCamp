from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Array

Phyluce_Align_Get_Bed_From_Lastz_V0_1_0 = CommandToolBuilder(tool="phyluce_align_get_bed_from_lastz", base_command=["phyluce_align_get_bed_from_lastz"], inputs=[ToolInput(tag="in_last_z", input_type=File(optional=True), prefix="--lastz", doc=InputDocumentation(doc="The input lastz file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output BED file")), ToolInput(tag="in_identity", input_type=String(optional=True), prefix="--identity", doc=InputDocumentation(doc="The minimum percent identity to output")), ToolInput(tag="in_continuity", input_type=String(optional=True), prefix="--continuity", doc=InputDocumentation(doc="The minimum percent continuity to output")), ToolInput(tag="in_long_format", input_type=Boolean(optional=True), prefix="--long-format", doc=InputDocumentation(doc="Long-format LASTZ file")), ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="A python INI formatted file containins loci to keep")), ToolInput(tag="in_sections", input_type=Array(t=String(), optional=True), prefix="--sections", doc=InputDocumentation(doc="The sections of files to move\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output BED file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Get_Bed_From_Lastz_V0_1_0().translate("wdl", allow_empty_container=True)

