from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Removemateoverlap_V0_1_0 = CommandToolBuilder(tool="removeMateOverlap", base_command=["removeMateOverlap"], inputs=[ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Removemateoverlap_V0_1_0().translate("wdl", allow_empty_container=True)

