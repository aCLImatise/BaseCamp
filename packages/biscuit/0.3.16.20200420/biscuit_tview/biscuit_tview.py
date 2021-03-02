from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Biscuit_Tview_V0_1_0 = CommandToolBuilder(tool="biscuit_tview", base_command=["biscuit", "tview"], inputs=[ToolInput(tag="in_pos_go_directly", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=":pos     go directly to this position")), ToolInput(tag="in_max_number_reads", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="max number of reads to load per position [50]")), ToolInput(tag="in_highlight_reads_read", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="highlight the read(s) with the read name")), ToolInput(tag="in_flanking_sequence_length", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="flanking sequence length [10]")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Tview_V0_1_0().translate("wdl", allow_empty_container=True)

