from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Makehist_V0_1_0 = CommandToolBuilder(tool="makehist", base_command=["makehist"], inputs=[ToolInput(tag="in_distfile", input_type=File(optional=True), prefix="-distfile", doc=InputDocumentation(doc=".dist    Score file to read (required).")), ToolInput(tag="in_option", input_type=String(optional=True), prefix="-option", doc=InputDocumentation(doc="")), ToolInput(tag="in_run_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makehist_V0_1_0().translate("wdl", allow_empty_container=True)

