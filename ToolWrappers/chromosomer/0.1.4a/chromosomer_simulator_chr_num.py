from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Chromosomer_Simulator_Chr_Num_V0_1_0 = CommandToolBuilder(tool="chromosomer_simulator_chr_num", base_command=["chromosomer", "simulator", "chr_num"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_chromosome_r", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_simulator", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromosomer_Simulator_Chr_Num_V0_1_0().translate("wdl", allow_empty_container=True)

