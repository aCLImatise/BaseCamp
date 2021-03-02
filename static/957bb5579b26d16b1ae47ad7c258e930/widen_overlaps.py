from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Widen_Overlaps_V0_1_0 = CommandToolBuilder(tool="widen_overlaps", base_command=["widen_overlaps"], inputs=[ToolInput(tag="in_depot", input_type=Boolean(optional=True), prefix="--depot", doc=InputDocumentation(doc="depot path (string)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Widen_Overlaps_V0_1_0().translate("wdl", allow_empty_container=True)

