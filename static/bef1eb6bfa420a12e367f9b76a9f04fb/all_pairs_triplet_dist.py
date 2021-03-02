from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

All_Pairs_Triplet_Dist_V0_1_0 = CommandToolBuilder(tool="all_pairs_triplet_dist", base_command=["all_pairs_triplet_dist"], inputs=[ToolInput(tag="in_input_filename", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    All_Pairs_Triplet_Dist_V0_1_0().translate("wdl", allow_empty_container=True)

