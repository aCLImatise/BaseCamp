from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Knot_Extremity_Search_Read2Tig_V0_1_0 = CommandToolBuilder(tool="knot.extremity_search_read2tig", base_command=["knot.extremity_search", "read2tig"], inputs=[ToolInput(tag="in_read_two_read", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knot_Extremity_Search_Read2Tig_V0_1_0().translate("wdl")

