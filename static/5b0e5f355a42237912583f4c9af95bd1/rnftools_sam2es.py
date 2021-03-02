from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Rnftools_Sam2Es_V0_1_0 = CommandToolBuilder(tool="rnftools_sam2es", base_command=["rnftools", "sam2es"], inputs=[ToolInput(tag="in_sam", input_type=File(optional=True), prefix="--sam", doc=InputDocumentation(doc="SAM/BAM with aligned RNF reads(- for standard input).")), ToolInput(tag="in_es", input_type=File(optional=True), prefix="--es", doc=InputDocumentation(doc="Output ES file (evaluated segments, - for standard\noutput).")), ToolInput(tag="in_allowed_delta", input_type=Int(optional=True), prefix="--allowed-delta", doc=InputDocumentation(doc="Tolerance of difference of coordinates between true\n(i.e., expected) alignment and real alignment (very\nimportant parameter!) (default: 5).\n"))], outputs=[ToolOutput(tag="out_es", output_type=File(optional=True), selector=InputSelector(input_to_select="in_es", type_hint=File()), doc=OutputDocumentation(doc="Output ES file (evaluated segments, - for standard\noutput)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnftools_Sam2Es_V0_1_0().translate("wdl", allow_empty_container=True)

