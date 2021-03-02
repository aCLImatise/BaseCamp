from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String, Int

Terminus_Collapse_V0_1_0 = CommandToolBuilder(tool="terminus_collapse", base_command=["terminus", "collapse"], inputs=[ToolInput(tag="in_consensus_thresh", input_type=Float(optional=True), prefix="--consensus-thresh", doc=InputDocumentation(doc="threshold for edge consensus [default: 0.5]")), ToolInput(tag="in_dirs", input_type=String(optional=True), prefix="--dirs", doc=InputDocumentation(doc="...                         direcotories to read the group files from")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="prefix where output would be written")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use when writing down the collapsed quantifications [default: 8]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Terminus_Collapse_V0_1_0().translate("wdl", allow_empty_container=True)

