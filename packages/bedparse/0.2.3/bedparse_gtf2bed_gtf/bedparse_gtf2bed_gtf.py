from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Bedparse_Gtf2Bed_Gtf_V0_1_0 = CommandToolBuilder(tool="bedparse_gtf2bed_gtf", base_command=["bedparse", "gtf2bed", "gtf"], inputs=[ToolInput(tag="in_extrafields", input_type=String(optional=True), prefix="--extraFields", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gtf_two_bed", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedparse_Gtf2Bed_Gtf_V0_1_0().translate("wdl", allow_empty_container=True)

