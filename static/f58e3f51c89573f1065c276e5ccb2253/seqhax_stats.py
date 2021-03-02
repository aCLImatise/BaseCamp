from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Seqhax_Stats_V0_1_0 = CommandToolBuilder(tool="seqhax_stats", base_command=["seqhax", "stats"], inputs=[ToolInput(tag="in_number_parallel_jobs", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Number of parallel jobs [1]")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_number", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_parallel", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_jobs", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

