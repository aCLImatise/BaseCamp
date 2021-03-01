from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Lab2A_V0_1_0 = CommandToolBuilder(tool="LAb2a", base_command=["LAb2a"], inputs=[ToolInput(tag="in_la_a_two_b", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lab2A_V0_1_0().translate("wdl", allow_empty_container=True)

