from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Pt2To3_V0_1_0 = CommandToolBuilder(tool="pt2to3", base_command=["pt2to3"], inputs=[ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="reverts changes, going from 3.x -> 2.x.")), ToolInput(tag="in_no_ignore_previous", input_type=Boolean(optional=True), prefix="--no-ignore-previous", doc=InputDocumentation(doc="ignores previous_api() calls.")), ToolInput(tag="in_output_file_write", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file to write to.")), ToolInput(tag="in_in_place", input_type=Boolean(optional=True), prefix="--inplace", doc=InputDocumentation(doc="overwrites the file in-place.")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="path to input file."))], outputs=[ToolOutput(tag="out_output_file_write", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_write", type_hint=File()), doc=OutputDocumentation(doc="output file to write to."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pt2To3_V0_1_0().translate("wdl", allow_empty_container=True)

