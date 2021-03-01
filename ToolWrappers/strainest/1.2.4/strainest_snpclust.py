from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Strainest_Snpclust_V0_1_0 = CommandToolBuilder(tool="strainest_snpclust", base_command=["strainest", "snpclust"], inputs=[ToolInput(tag="in_snp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dist", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_snp_out", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_clust", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strainest_Snpclust_V0_1_0().translate("wdl", allow_empty_container=True)

