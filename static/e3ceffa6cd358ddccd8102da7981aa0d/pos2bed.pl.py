from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Pos2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="pos2bed.pl", base_command=["pos2bed.pl"], inputs=[ToolInput(tag="in_output_to_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="(Output to file)")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="(Output to file with same name as input with *.bed extension)")), ToolInput(tag="in_track", input_type=String(optional=True), prefix="-track", doc=InputDocumentation(doc="(Include track line with name for uploading to UCSC Genome Browser)")), ToolInput(tag="in_set_th_column", input_type=Boolean(optional=True), prefix="-5", doc=InputDocumentation(doc="(Set 5th column to the value 1 instead of value in 6th column of pos file)")), ToolInput(tag="in_float", input_type=Boolean(optional=True), prefix="-float", doc=InputDocumentation(doc="(Allow the 5th column to be a floating point number, default: integer)")), ToolInput(tag="in_color", input_type=File(optional=True), prefix="-color", doc=InputDocumentation(doc="(color strands red and blue, will also add a track line to file)")), ToolInput(tag="in_peak_slash_pos_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_to_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_to_file", type_hint=File()), doc=OutputDocumentation(doc="(Output to file)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pos2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

