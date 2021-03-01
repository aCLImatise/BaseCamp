from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Get_Gff_Info_Split_V0_1_0 = CommandToolBuilder(tool="get_gff_info_split", base_command=["get-gff-info", "split"], inputs=[ToolInput(tag="in_verbose", input_type=File(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Prefix for the file name in output  [default: split]")), ToolInput(tag="in_number", input_type=Int(optional=True), prefix="--number", doc=InputDocumentation(doc="Number of chunks into which split the GFF file\n[default: 10]")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="gzip output files")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_verbose", output_type=File(optional=True), selector=InputSelector(input_to_select="in_verbose", type_hint=File()), doc=OutputDocumentation(doc="Prefix for the file name in output  [default: split]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Gff_Info_Split_V0_1_0().translate("wdl", allow_empty_container=True)

