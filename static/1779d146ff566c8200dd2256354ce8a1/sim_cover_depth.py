from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Sim_Cover_Depth_V0_1_0 = CommandToolBuilder(tool="sim_cover_depth", base_command=["sim-cover-depth"], inputs=[ToolInput(tag="in_adjust_genome_length", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="Adjust genome length to get best match to distrib\ninput from stdin")), ToolInput(tag="in_set_minimum_overlap", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Set minimum overlap length to <n> (default = 40)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sim_Cover_Depth_V0_1_0().translate("wdl", allow_empty_container=True)

