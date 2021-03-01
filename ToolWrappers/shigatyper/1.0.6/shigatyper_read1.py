from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Shigatyper_Read1_V0_1_0 = CommandToolBuilder(tool="shigatyper_read1", base_command=["shigatyper", "read1"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_read_one", input_type=Int(), position=0, doc=InputDocumentation(doc="read2"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shigatyper_Read1_V0_1_0().translate("wdl", allow_empty_container=True)

