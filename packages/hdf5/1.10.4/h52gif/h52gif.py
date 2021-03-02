from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

H52Gif_V0_1_0 = CommandToolBuilder(tool="h52gif", base_command=["h52gif"], inputs=[ToolInput(tag="in_i", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_h_five_file", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gif_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H52Gif_V0_1_0().translate("wdl", allow_empty_container=True)

