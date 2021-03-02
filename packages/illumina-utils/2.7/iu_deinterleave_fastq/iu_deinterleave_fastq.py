from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Iu_Deinterleave_Fastq_V0_1_0 = CommandToolBuilder(tool="iu_deinterleave_fastq", base_command=["iu-deinterleave-fastq"], inputs=[ToolInput(tag="in_two", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Deinterleave_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

