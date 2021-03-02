from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Megagta_Search_V0_1_0 = CommandToolBuilder(tool="megagta_search", base_command=["megagta", "search"], inputs=[ToolInput(tag="in_search", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_succinct_dbg", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_list", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_starting_km_ers_prefix", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_prune_len", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_low_cov_penalty", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megagta_Search_V0_1_0().translate("wdl", allow_empty_container=True)

