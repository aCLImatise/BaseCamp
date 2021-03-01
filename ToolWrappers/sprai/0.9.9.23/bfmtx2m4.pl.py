from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Bfmtx2M4_Pl_V0_1_0 = CommandToolBuilder(tool="bfmtx2m4.pl", base_command=["bfmtx2m4.pl"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_m_four_dot_pre", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_all_norm_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bfmtx2M4_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

