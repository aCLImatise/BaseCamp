from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Maf_Swap_V0_1_0 = CommandToolBuilder(tool="maf_swap", base_command=["maf-swap"], inputs=[ToolInput(tag="in_move_nth_sequence", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="move the Nth sequence to the top (default: 2)")), ToolInput(tag="in_my_alignments_dot_maf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/last:1219--h2e03b76_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Swap_V0_1_0().translate("wdl")

