from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Secapr_Quality_Check_V0_1_0 = CommandToolBuilder(tool="secapr_quality_check", base_command=["secapr", "quality_check"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="The directory containing fastq files")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output directory where quality-test results will be\nsaved\n"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output directory where quality-test results will be\nsaved\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secapr_Quality_Check_V0_1_0().translate("wdl", allow_empty_container=True)

