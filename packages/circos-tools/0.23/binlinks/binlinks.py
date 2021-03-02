from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Binlinks_V0_1_0 = CommandToolBuilder(tool="binlinks", base_command=["binlinks"], inputs=[ToolInput(tag="in_output_style", input_type=Int(optional=True), prefix="-output_style", doc=InputDocumentation(doc="|1|2")), ToolInput(tag="in_bin_size", input_type=String(optional=True), prefix="-bin_size", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Binlinks_V0_1_0().translate("wdl", allow_empty_container=True)

