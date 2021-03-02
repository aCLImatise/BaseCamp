from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Fragmentdepth_V0_1_0 = CommandToolBuilder(tool="fragmentDepth", base_command=["fragmentDepth"], inputs=[ToolInput(tag="in_min", input_type=Int(optional=True), prefix="-min", doc=InputDocumentation(doc="use scaffolds at least N bases long.")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="-max", doc=InputDocumentation(doc="use scaffolds at most N bases long.")), ToolInput(tag="in_step_size", input_type=String(optional=True), prefix="-stepSize", doc=InputDocumentation(doc="will compute those stats, in blocks of N bases (e.g., for bases")), ToolInput(tag="in_mode", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fragmentdepth_V0_1_0().translate("wdl", allow_empty_container=True)

