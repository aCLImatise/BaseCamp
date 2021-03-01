from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Get_Called_Regions_V0_1_0 = CommandToolBuilder(tool="get_called_regions", base_command=["get_called_regions"], inputs=[ToolInput(tag="in_gvc_f", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_called_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Called_Regions_V0_1_0().translate("wdl", allow_empty_container=True)

