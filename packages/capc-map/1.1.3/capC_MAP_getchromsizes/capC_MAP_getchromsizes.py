from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Capc_Map_Getchromsizes_V0_1_0 = CommandToolBuilder(tool="capC_MAP_getchromsizes", base_command=["capC-MAP", "getchromsizes"], inputs=[ToolInput(tag="in_bed_file_continaing", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="bed file continaing list of restriction enzyme fragments\nfor genome")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name (Default: chrom.sizes)"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name (Default: chrom.sizes)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Capc_Map_Getchromsizes_V0_1_0().translate("wdl", allow_empty_container=True)

