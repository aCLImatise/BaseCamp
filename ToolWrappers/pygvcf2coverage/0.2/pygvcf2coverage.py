from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pygvcf2Coverage_V0_1_0 = CommandToolBuilder(tool="pygvcf2coverage", base_command=["pygvcf2coverage"], inputs=[ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="DP threshold")), ToolInput(tag="in_no_merge", input_type=Boolean(optional=True), prefix="--no_merge", doc=InputDocumentation(doc="Do not merge entries")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="Merging distance\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pygvcf2Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

