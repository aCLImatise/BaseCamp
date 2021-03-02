from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hgvstovcf_V0_1_0 = CommandToolBuilder(tool="hgvsToVcf", base_command=["hgvsToVcf"], inputs=[ToolInput(tag="in_no_left_shift", input_type=Boolean(optional=True), prefix="-noLeftShift", doc=InputDocumentation(doc="Don't do the VCF-conventional left shifting of ambiguous placements")), ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_hgvs", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgvstovcf_V0_1_0().translate("wdl", allow_empty_container=True)

