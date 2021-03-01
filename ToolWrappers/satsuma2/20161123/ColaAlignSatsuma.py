from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Colaalignsatsuma_V0_1_0 = CommandToolBuilder(tool="ColaAlignSatsuma", base_command=["ColaAlignSatsuma"], inputs=[ToolInput(tag="in_string_query_sequence", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="<string> : query sequence"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Colaalignsatsuma_V0_1_0().translate("wdl", allow_empty_container=True)

