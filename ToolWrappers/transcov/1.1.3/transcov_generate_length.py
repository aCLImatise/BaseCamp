from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Transcov_Generate_Length_V0_1_0 = CommandToolBuilder(tool="transcov_generate_length", base_command=["transcov", "generate-length"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="RANGE")), ToolInput(tag="in_bam_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="RANGE"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transcov_Generate_Length_V0_1_0().translate("wdl", allow_empty_container=True)

