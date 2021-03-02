from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rgt_Tools_Py_Bam_Filter_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bam_filter", base_command=["rgt-tools.py", "bam_filter"], inputs=[ToolInput(tag="in_input_bam_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BAM file")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="Input BED file for the regions for filtering")), ToolInput(tag="in_output_prefix_bam", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output prefix for BAM file"))], outputs=[ToolOutput(tag="out_output_prefix_bam", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_prefix_bam", type_hint=File()), doc=OutputDocumentation(doc="Output prefix for BAM file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bam_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

