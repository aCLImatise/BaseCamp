from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Bioformats_Rmout2Bed_V0_1_0 = CommandToolBuilder(tool="bioformats_rmout2bed", base_command=["bioformats", "rmout2bed"], inputs=[ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="how to choose colors of BED repeat records (default:\nclass)")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="how to choose names of BED repeat records (default:\nid)")), ToolInput(tag="in_short", input_type=File(optional=True), prefix="--short", doc=InputDocumentation(doc="output only repeat loci (the output is a BED3 file)\n(default: False)\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_rm_out_file", input_type=String(), position=0, doc=InputDocumentation(doc="a RepeatMasker out file")), ToolInput(tag="in_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc="the output BED file"))], outputs=[ToolOutput(tag="out_short", output_type=File(optional=True), selector=InputSelector(input_to_select="in_short", type_hint=File()), doc=OutputDocumentation(doc="output only repeat loci (the output is a BED3 file)\n(default: False)\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Rmout2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

