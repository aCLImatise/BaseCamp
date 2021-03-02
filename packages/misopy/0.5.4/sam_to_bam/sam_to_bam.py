from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sam_To_Bam_V0_1_0 = CommandToolBuilder(tool="sam_to_bam", base_command=["sam_to_bam"], inputs=[ToolInput(tag="in_convert", input_type=File(optional=True), prefix="--convert", doc=InputDocumentation(doc="Convert given SAM file to indexed, sorted BAM file with\nheaders. Takes SAM filename and output directory.")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="References file to use to get chromosome lengths."))], outputs=[ToolOutput(tag="out_convert", output_type=File(optional=True), selector=InputSelector(input_to_select="in_convert", type_hint=File()), doc=OutputDocumentation(doc="Convert given SAM file to indexed, sorted BAM file with\nheaders. Takes SAM filename and output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sam_To_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

