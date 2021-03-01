from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Lordfast_V0_1_0 = CommandToolBuilder(tool="lordfast", base_command=["lordfast"], inputs=[ToolInput(tag="in_ddeessccrriippttiioonn", input_type=String(), position=0, doc=InputDocumentation(doc="DDEESSCCRRIIPPTTIIOONN")), ToolInput(tag="in_sensitive_tool_mapping", input_type=String(), position=1, doc=InputDocumentation(doc="is  a  sensitive  tool for mapping long reads with high error")), ToolInput(tag="in_sequencing", input_type=String(), position=0, doc=InputDocumentation(doc="technology  but  provides  the  user  the ability to change")), ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc="to the reference genome file in FASTA format which is sup-")), ToolInput(tag="in_use", input_type=String(), position=0, doc=InputDocumentation(doc="_I_N_T  number  of  CPU cores. Pass 0 to use all the available")), ToolInput(tag="in_ignore", input_type=String(), position=0, doc=InputDocumentation(doc="anchoring  positions  with more than _I_N_T reference hits."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lordfast_V0_1_0().translate("wdl", allow_empty_container=True)

