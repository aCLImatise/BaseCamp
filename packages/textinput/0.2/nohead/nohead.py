from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Nohead_V0_1_0 = CommandToolBuilder(tool="nohead", base_command=["nohead"], inputs=[ToolInput(tag="in_lines", input_type=Int(optional=True), prefix="--lines", doc=InputDocumentation(doc="suppress NUM lines (default 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nohead_V0_1_0().translate("wdl", allow_empty_container=True)

