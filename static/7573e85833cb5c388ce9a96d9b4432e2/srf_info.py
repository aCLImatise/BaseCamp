from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Srf_Info_V0_1_0 = CommandToolBuilder(tool="srf_info", base_command=["srf_info"], inputs=[ToolInput(tag="in_count_goodbad_reads", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="1 Count of good/bad reads.\n2 Counts for selected chunk types.\n4 Trace count and trace name prefix for each trace_header.\n8 Base count.\n")), ToolInput(tag="in_level", input_type=String(optional=True), prefix="-level", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srf_Info_V0_1_0().translate("wdl", allow_empty_container=True)

