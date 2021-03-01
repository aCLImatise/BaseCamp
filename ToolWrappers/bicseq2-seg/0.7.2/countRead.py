from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Countread_V0_1_0 = CommandToolBuilder(tool="countRead", base_command=["countRead"], inputs=[ToolInput(tag="in_normalized_data_case", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc=": the normalized data for the case genome; This is is an required option")), ToolInput(tag="in_normalized_data_control", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc=": the normalized data for the control genome; This is optional.")), ToolInput(tag="in_output_file_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": the output file; Default is <stdout>")), ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="--chrom", doc=InputDocumentation(doc=": the chromosome name")), ToolInput(tag="in_region_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file_default", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_default", type_hint=File()), doc=OutputDocumentation(doc=": the output file; Default is <stdout>"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Countread_V0_1_0().translate("wdl", allow_empty_container=True)

