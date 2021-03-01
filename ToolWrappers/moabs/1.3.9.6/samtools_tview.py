from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Samtools_Tview_V0_1_0 = CommandToolBuilder(tool="samtools_tview", base_command=["samtools", "tview"], inputs=[ToolInput(tag="in_output_html_text", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="output as (H)tml or (C)urses or (T)ext")), ToolInput(tag="in_go_directly_position", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc=":pos      go directly to this position")), ToolInput(tag="in_display_only_reads", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="display only reads from this sample or group")), ToolInput(tag="in_bam_tk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_t_view", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_aln_dot_bam", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fast_a", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Tview_V0_1_0().translate("wdl", allow_empty_container=True)

