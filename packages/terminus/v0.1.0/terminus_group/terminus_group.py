from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String, Float

Terminus_Group_V0_1_0 = CommandToolBuilder(tool="terminus_group", base_command=["terminus", "group"], inputs=[ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="directory to read input from")), ToolInput(tag="in_min_spread", input_type=Int(optional=True), prefix="--min-spread", doc=InputDocumentation(doc="the minimum spread a transcript must exhibit to enable an attached edge to be a\ncollapse candidate [default: 0.1]")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="prefix where output would be written")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="The allowable difference between the weights of transcripts in same equivalence\nclasses to treat them as identical [default: 10]")), ToolInput(tag="in_tolerance", input_type=Float(optional=True), prefix="--tolerance", doc=InputDocumentation(doc="The allowable difference between the weights of transcripts in same equivalence\nclasses to treat them as identical [default: 0.001]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Terminus_Group_V0_1_0().translate("wdl", allow_empty_container=True)

