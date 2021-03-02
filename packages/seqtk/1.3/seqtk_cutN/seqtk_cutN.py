from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Seqtk_Cutn_V0_1_0 = CommandToolBuilder(tool="seqtk_cutN", base_command=["seqtk", "cutN"], inputs=[ToolInput(tag="in_min_size_tract", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="min size of N tract [1000]")), ToolInput(tag="in_penalty_for_nonn", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="penalty for a non-N [10]")), ToolInput(tag="in_print_gaps_only", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="print gaps only, no sequence")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Cutn_V0_1_0().translate("wdl", allow_empty_container=True)

