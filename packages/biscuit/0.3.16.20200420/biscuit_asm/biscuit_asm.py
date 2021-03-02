from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Biscuit_Asm_V0_1_0 = CommandToolBuilder(tool="biscuit_asm", base_command=["biscuit", "asm"], inputs=[ToolInput(tag="in_input_dot_epi_read", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Asm_V0_1_0().translate("wdl", allow_empty_container=True)

