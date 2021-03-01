from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hmmgs_Find_Cuts_V0_1_0 = CommandToolBuilder(tool="hmmgs_find_cuts", base_command=["hmmgs", "find-cuts"], inputs=[ToolInput(tag="in_cut_finder", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er_size", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bloom_filter", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_files", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmgs_Find_Cuts_V0_1_0().translate("wdl", allow_empty_container=True)

