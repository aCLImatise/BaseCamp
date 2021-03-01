from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gtf2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="gtf2bed.pl", base_command=["gtf2bed.pl"], inputs=[ToolInput(tag="in_input_gtf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_upstream_extension", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_downstream_extension", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

