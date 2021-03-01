from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Pick_Long_Reads_V0_1_0 = CommandToolBuilder(tool="pick_long_reads", base_command=["pick_long_reads"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pick_Long_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

