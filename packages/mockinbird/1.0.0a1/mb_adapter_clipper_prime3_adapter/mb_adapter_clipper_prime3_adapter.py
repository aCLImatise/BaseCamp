from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mb_Adapter_Clipper_Prime3_Adapter_V0_1_0 = CommandToolBuilder(tool="mb_adapter_clipper_prime3_adapter", base_command=["mb-adapter-clipper", "prime3_adapter"], inputs=[ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc="")), ToolInput(tag="in_clip_len", input_type=String(optional=True), prefix="--clip_len", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_adapter_clipper", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Adapter_Clipper_Prime3_Adapter_V0_1_0().translate("wdl", allow_empty_container=True)

