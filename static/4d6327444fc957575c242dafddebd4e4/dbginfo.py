from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dbginfo_V0_1_0 = CommandToolBuilder(tool="dbginfo", base_command=["dbginfo"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="(1 arg) :    graph file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbginfo_V0_1_0().translate("wdl", allow_empty_container=True)

