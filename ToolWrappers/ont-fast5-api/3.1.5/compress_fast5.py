from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Compress_Fast5_V0_1_0 = CommandToolBuilder(tool="compress_fast5", base_command=["compress_fast5"], inputs=[ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_tool", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_changing", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_compression", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_five", input_type=Int(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compress_Fast5_V0_1_0().translate("wdl", allow_empty_container=True)

