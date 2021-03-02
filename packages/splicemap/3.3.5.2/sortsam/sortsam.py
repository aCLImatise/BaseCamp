from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sortsam_V0_1_0 = CommandToolBuilder(tool="sortsam", base_command=["sortsam"], inputs=[ToolInput(tag="in_pos", input_type=Boolean(optional=True), prefix="-pos", doc=InputDocumentation(doc="-- Sort by chromosome position")), ToolInput(tag="in_idx", input_type=Boolean(optional=True), prefix="-idx", doc=InputDocumentation(doc="-- Sort by read_index position"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sortsam_V0_1_0().translate("wdl", allow_empty_container=True)

