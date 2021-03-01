from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Phyluce_Probe_Get_Probe_Bed_From_Lastz_Files_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_get_probe_bed_from_lastz_files", base_command=["phyluce_probe_get_probe_bed_from_lastz_files"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The input directory containing lastz files")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory to hold BED-formatted files"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory to hold BED-formatted files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Get_Probe_Bed_From_Lastz_Files_V0_1_0().translate("wdl", allow_empty_container=True)

