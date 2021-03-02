from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Swga_V0_1_0 = CommandToolBuilder(tool="swga", base_command=["swga"], inputs=[ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Swga_V0_1_0().translate("wdl", allow_empty_container=True)

