from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Nw_Duration_V0_1_0 = CommandToolBuilder(tool="nw_duration", base_command=["nw_duration"], inputs=[ToolInput(tag="in_bh_il", input_type=Boolean(optional=True), prefix="-bhIL", doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_vertical_line", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Duration_V0_1_0().translate("wdl", allow_empty_container=True)

