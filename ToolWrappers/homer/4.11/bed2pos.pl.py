from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bed2Pos_Pl_V0_1_0 = CommandToolBuilder(tool="bed2pos.pl", base_command=["bed2pos.pl"], inputs=[ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="-check", doc=InputDocumentation(doc="(Checks if the file is already peak/pos formatted)")), ToolInput(tag="in_unique", input_type=Boolean(optional=True), prefix="-unique", doc=InputDocumentation(doc="(Make peaks names unique by adding numbers to replicate names)")), ToolInput(tag="in_send_output_file_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="(Send output to this file, default: stdout)")), ToolInput(tag="in_pos", input_type=Boolean(optional=True), prefix="-pos", doc=InputDocumentation(doc="(Send output to file with same name as input file with *.pos extension)")), ToolInput(tag="in_bed_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_send_output_file_default", output_type=File(optional=True), selector=InputSelector(input_to_select="in_send_output_file_default", type_hint=File()), doc=OutputDocumentation(doc="(Send output to this file, default: stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed2Pos_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

