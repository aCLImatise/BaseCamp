from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Stacks_Samtools_Tview_V0_1_0 = CommandToolBuilder(tool="stacks_samtools_tview", base_command=["stacks-samtools-tview"], inputs=[ToolInput(tag="in_write_alignments", input_type=String(optional=True), prefix="--write-alignments", doc=InputDocumentation(doc="(This is a convenience wrapper around samtools-tview.)")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-P", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stacks_Samtools_Tview_V0_1_0().translate("wdl", allow_empty_container=True)

