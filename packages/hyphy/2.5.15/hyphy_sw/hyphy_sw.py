from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hyphy_Sw_V0_1_0 = CommandToolBuilder(tool="hyphy_sw", base_command=["hyphy", "sw"], inputs=[ToolInput(tag="in_to", input_type=String(), position=0, doc=InputDocumentation(doc="MPIReceive(-1, fromNode, result_String);"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hyphy_Sw_V0_1_0().translate("wdl", allow_empty_container=True)

