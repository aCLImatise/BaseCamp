from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Vcf2Bedgraph_Pl_V0_1_0 = CommandToolBuilder(tool="vcf2bedGraph.pl", base_command=["vcf2bedGraph.pl"], inputs=[ToolInput(tag="in_sample_order", input_type=File(optional=True), prefix="--sample_order", doc=InputDocumentation(doc=": sample order choose to output as bed file when there are multiple samples in the same vcf file. 1 means the first sample (default: 1)")), ToolInput(tag="in_min_ct", input_type=Int(optional=True), prefix="--minCT", doc=InputDocumentation(doc=": minimum number of CT reads, otherwise, methy column will be '.' (default: 1)")), ToolInput(tag="in_input_file_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cg", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_sample_order", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sample_order", type_hint=File()), doc=OutputDocumentation(doc=": sample order choose to output as bed file when there are multiple samples in the same vcf file. 1 means the first sample (default: 1)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcf2Bedgraph_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

