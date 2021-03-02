from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Bloom_Query_V0_1_0 = CommandToolBuilder(tool="bloom_query", base_command=["bloom_query"], inputs=[ToolInput(tag="in_mer", input_type=Int(optional=True), prefix="--mer", doc=InputDocumentation(doc="*k-mer size")), ToolInput(tag="in_bloom_query_cmdline", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bloom_Query_V0_1_0().translate("wdl", allow_empty_container=True)

