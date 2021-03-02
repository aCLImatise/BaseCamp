from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Reverse_Complement_V0_1_0 = CommandToolBuilder(tool="rsat_reverse_complement", base_command=["rsat", "reverse-complement"], inputs=[ToolInput(tag="in_reverse_complement", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="[1mAUTHORS[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Reverse_Complement_V0_1_0().translate("wdl", allow_empty_container=True)

