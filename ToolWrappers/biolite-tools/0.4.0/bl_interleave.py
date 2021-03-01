from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bl_Interleave_V0_1_0 = CommandToolBuilder(tool="bl_interleave", base_command=["bl-interleave"], inputs=[ToolInput(tag="in_specify_multiple_files", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="specify multiple INPUT files")), ToolInput(tag="in_specify_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="specify the OUTPUT file")), ToolInput(tag="in_reformat_paired_read", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="reformat paired read ID lines by replacing everything after the first\nspace, tab or / with the specified SEP followed by the input file number\n(e.g. '/' will use /1 as the ID suffix for the first input file, etc.)")), ToolInput(tag="in_interleave", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_specify_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_output_file", type_hint=File()), doc=OutputDocumentation(doc="specify the OUTPUT file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bl_Interleave_V0_1_0().translate("wdl", allow_empty_container=True)

