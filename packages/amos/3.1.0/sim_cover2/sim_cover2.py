from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Sim_Cover2_V0_1_0 = CommandToolBuilder(tool="sim_cover2", base_command=["sim-cover2"], inputs=[ToolInput(tag="in_set_minimum_overlap", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Set minimum overlap length to <n> (default = 40)")), ToolInput(tag="in_coverage", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_len", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_len", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sim_Cover2_V0_1_0().translate("wdl", allow_empty_container=True)

