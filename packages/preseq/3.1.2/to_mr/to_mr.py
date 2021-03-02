from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

To_Mr_V0_1_0 = CommandToolBuilder(tool="to_mr", base_command=["to-mr"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="-output", doc=InputDocumentation(doc="Name of output file")), ToolInput(tag="in_suff", input_type=Boolean(optional=True), prefix="-suff", doc=InputDocumentation(doc="read name suffix length (default: 1)")), ToolInput(tag="in_max_frag", input_type=Boolean(optional=True), prefix="-max-frag", doc=InputDocumentation(doc="maximum allowed insert size")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="print more information")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_sam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file"))], container="quay.io/biocontainers/preseq:3.1.2--hfb6f838_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    To_Mr_V0_1_0().translate("wdl")

