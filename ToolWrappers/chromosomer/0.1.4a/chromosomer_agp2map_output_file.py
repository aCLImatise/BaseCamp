from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Chromosomer_Agp2Map_Output_File_V0_1_0 = CommandToolBuilder(tool="chromosomer_agp2map_output_file", base_command=["chromosomer", "agp2map", "output_file"], inputs=[ToolInput(tag="in_chromosome_r", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_agp_two_map", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_agp_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromosomer_Agp2Map_Output_File_V0_1_0().translate("wdl", allow_empty_container=True)

