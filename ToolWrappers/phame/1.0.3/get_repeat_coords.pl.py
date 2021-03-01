from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Get_Repeat_Coords_Pl_V0_1_0 = CommandToolBuilder(tool="get_repeat_coords.pl", base_command=["get_repeat_coords.pl"], inputs=[ToolInput(tag="in_identity_cutoff_default", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="the identity cutoff 0 to 100 (default: 95)")), ToolInput(tag="in_repeat_length_default", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="the repeat length cutoff (default:0)")), ToolInput(tag="in_output_filename_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename (default: repeats_coords.txt)")), ToolInput(tag="in_output_stats_filename", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="output stats filename (default: repeats_stats.txt)"))], outputs=[ToolOutput(tag="out_output_filename_default", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename_default", type_hint=File()), doc=OutputDocumentation(doc="output filename (default: repeats_coords.txt)")), ToolOutput(tag="out_output_stats_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_stats_filename", type_hint=File()), doc=OutputDocumentation(doc="output stats filename (default: repeats_stats.txt)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Repeat_Coords_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

