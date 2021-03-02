from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Knot_Extremity_Search_Output_V0_1_0 = CommandToolBuilder(tool="knot.extremity_search_output", base_command=["knot.extremity_search", "output"], inputs=[ToolInput(tag="in_knot_dot_extremity_search", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_two_tig", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_two_read", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knot_Extremity_Search_Output_V0_1_0().translate("wdl")

