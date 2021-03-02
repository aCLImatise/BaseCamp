from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Bwa_Fastmap_V0_1_0 = CommandToolBuilder(tool="bwa_fastmap", base_command=["bwa", "fastmap"], inputs=[ToolInput(tag="in_min_smem_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="min SMEM length to output [17]")), ToolInput(tag="in_max_interval_size", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="max interval size to find coordiantes [20]")), ToolInput(tag="in_min_smem_interval", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="min SMEM interval size [1]")), ToolInput(tag="in_max_mem_length", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="max MEM length [2147483647]")), ToolInput(tag="in_stop_mem_is", input_type=Int(optional=True), prefix="-I", doc=InputDocumentation(doc="stop if MEM is longer than -l with a size less than INT [0]")), ToolInput(tag="in_idx_base", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Fastmap_V0_1_0().translate("wdl", allow_empty_container=True)

