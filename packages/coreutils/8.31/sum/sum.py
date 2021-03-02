from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sum_V0_1_0 = CommandToolBuilder(tool="sum", base_command=["sum"], inputs=[ToolInput(tag="in_use_algorithm_use", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="use BSD sum algorithm, use 1K blocks")), ToolInput(tag="in_sysv", input_type=Boolean(optional=True), prefix="--sysv", doc=InputDocumentation(doc="use System V sum algorithm, use 512 bytes blocks"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sum_V0_1_0().translate("wdl", allow_empty_container=True)

