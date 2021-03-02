from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Directory, String

Dedup_V0_1_0 = CommandToolBuilder(tool="dedup", base_command=["dedup"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="the input file if this option is not specified,\nthe input is expected to be piped in")), ToolInput(tag="in_merged", input_type=Boolean(optional=True), prefix="--merged", doc=InputDocumentation(doc="the input only contains merged reads.\nIf this option is specified read names are not\nexamined for prefixes.\nBoth the start and end of the aligment are considered\nfor all reads.")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="the output folder. Has to be specified if input is")), ToolInput(tag="in_ded_up", input_type=String(), position=0, doc=InputDocumentation(doc="-h,--help           show this help page")), ToolInput(tag="in_set_dot", input_type=String(), position=1, doc=InputDocumentation(doc="-u,--unsorted       Do not automatically sort the output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dedup_V0_1_0().translate("wdl", allow_empty_container=True)

