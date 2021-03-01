from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String

Parallel_Blat_V0_1_0 = CommandToolBuilder(tool="parallel_blat", base_command=["parallel_blat"], inputs=[ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="(=8)             number of threads")), ToolInput(tag="in_similar", input_type=Float(optional=True), prefix="--similar", doc=InputDocumentation(doc="(=0.95)              similarity")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parallel_Blat_V0_1_0().translate("wdl", allow_empty_container=True)

