from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vstree2Tex_V0_1_0 = CommandToolBuilder(tool="vstree2tex", base_command=["vstree2tex"], inputs=[ToolInput(tag="in_index_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vstree2Tex_V0_1_0().translate("wdl", allow_empty_container=True)

