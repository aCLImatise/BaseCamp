from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastblocksearch_V0_1_0 = CommandToolBuilder(tool="fastBlockSearch", base_command=["fastBlockSearch"], inputs=[ToolInput(tag="in_fast_blocks_search", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqs_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fam_dot_pr_fl", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastblocksearch_V0_1_0().translate("wdl", allow_empty_container=True)

