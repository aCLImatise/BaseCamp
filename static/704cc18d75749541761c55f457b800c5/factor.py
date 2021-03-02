from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Factor_V0_1_0 = CommandToolBuilder(tool="factor", base_command=["factor"], inputs=[ToolInput(tag="in_number", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Factor_V0_1_0().translate("wdl", allow_empty_container=True)

