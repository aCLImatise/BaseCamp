from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Sketchy_Rs_Compute_V0_1_0 = CommandToolBuilder(tool="sketchy_rs_compute", base_command=["sketchy-rs", "compute"], inputs=[ToolInput(tag="in_progress", input_type=Int(optional=True), prefix="--progress", doc=InputDocumentation(doc="progress switch > 0")), ToolInput(tag="in_ranks", input_type=Int(optional=True), prefix="--ranks", doc=InputDocumentation(doc="max ranks per read")), ToolInput(tag="in_sketch", input_type=File(optional=True), prefix="--sketch", doc=InputDocumentation(doc="reference sketch")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="max threads for mash")), ToolInput(tag="in_sketchy_rs", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Rs_Compute_V0_1_0().translate("wdl", allow_empty_container=True)

