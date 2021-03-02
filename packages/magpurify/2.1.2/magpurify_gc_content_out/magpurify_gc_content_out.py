from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Magpurify_Gc_Content_Out_V0_1_0 = CommandToolBuilder(tool="magpurify_gc_content_out", base_command=["magpurify", "gc-content", "out"], inputs=[ToolInput(tag="in_weighted_mean", input_type=Boolean(optional=True), prefix="--weighted-mean", doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_off", input_type=String(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="")), ToolInput(tag="in_mag_purify", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gc_content", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fna", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Magpurify_Gc_Content_Out_V0_1_0().translate("wdl", allow_empty_container=True)

