from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chromosomer_Fragmentmapstat_Output_V0_1_0 = CommandToolBuilder(tool="chromosomer_fragmentmapstat_output", base_command=["chromosomer", "fragmentmapstat", "output"], inputs=[ToolInput(tag="in_chromosome_r", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fragment_map_stat", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_map", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromosomer_Fragmentmapstat_Output_V0_1_0().translate("wdl", allow_empty_container=True)

