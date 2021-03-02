from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bamtools_2_4_1_Coverage_V0_1_0 = CommandToolBuilder(tool="bamtools_2.4.1_coverage", base_command=["bamtools-2.4.1", "coverage"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file [stdin]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="the output file [stdout]")), ToolInput(tag="in_bam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_coverage", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="the output file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_2_4_1_Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

