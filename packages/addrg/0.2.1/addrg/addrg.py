from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Addrg_V0_1_0 = CommandToolBuilder(tool="addrg", base_command=["addrg"], inputs=[ToolInput(tag="in_file_dot_bam", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rg_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Addrg_V0_1_0().translate("wdl", allow_empty_container=True)

