from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Treebest_Mfa2Aln_V0_1_0 = CommandToolBuilder(tool="treebest_mfa2aln", base_command=["treebest", "mfa2aln"], inputs=[ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_align", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Mfa2Aln_V0_1_0().translate("wdl", allow_empty_container=True)

