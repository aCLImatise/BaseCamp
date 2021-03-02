from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Weeder2_V0_1_0 = CommandToolBuilder(tool="weeder2", base_command=["weeder2"], inputs=[ToolInput(tag="in_sim", input_type=Int(optional=True), prefix="-sim", doc=InputDocumentation(doc="(DEFAULT: 0.95 MIN: 0 MAX: 1)")), ToolInput(tag="in_em", input_type=Int(optional=True), prefix="-em", doc=InputDocumentation(doc="(DEFAULT: 1 MIN: 0 MAX: 100)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Weeder2_V0_1_0().translate("wdl", allow_empty_container=True)

