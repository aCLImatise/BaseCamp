from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fermi_Exact_V0_1_0 = CommandToolBuilder(tool="fermi_exact", base_command=["fermi", "exact"], inputs=[ToolInput(tag="in_ms", input_type=Boolean(optional=True), prefix="-Ms", doc=InputDocumentation(doc="")), ToolInput(tag="in_idx_based_ot_bwt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_src_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Exact_V0_1_0().translate("wdl", allow_empty_container=True)

