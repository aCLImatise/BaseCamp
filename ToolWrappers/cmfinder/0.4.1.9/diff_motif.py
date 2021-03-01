from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Diff_Motif_V0_1_0 = CommandToolBuilder(tool="diff_motif", base_command=["diff_motif"], inputs=[ToolInput(tag="in_show_overlapped_sequences", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": Show overlapped sequences")), ToolInput(tag="in_m", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": Show sequences in motif1 that are not in motif2")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": Show sequences in motif2 that are not in motif1")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_motif_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_motif_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Diff_Motif_V0_1_0().translate("wdl", allow_empty_container=True)

