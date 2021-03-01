from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Clustalw2Phylip_V0_1_0 = CommandToolBuilder(tool="clustalw2phylip", base_command=["clustalw2phylip"], inputs=[ToolInput(tag="in_clustalw_two_phy_i_lip", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_clustalw_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustalw2Phylip_V0_1_0().translate("wdl", allow_empty_container=True)

