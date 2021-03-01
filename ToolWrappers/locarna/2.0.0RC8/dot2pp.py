from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dot2Pp_V0_1_0 = CommandToolBuilder(tool="dot2pp", base_command=["dot2pp"], inputs=[ToolInput(tag="in_man", input_type=String(optional=True), prefix="--man", doc=InputDocumentation(doc="documentation")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Sequence name")), ToolInput(tag="in_in_file_do_tdp_ps", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dot2Pp_V0_1_0().translate("wdl", allow_empty_container=True)

