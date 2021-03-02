from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nproc_V0_1_0 = CommandToolBuilder(tool="nproc", base_command=["nproc"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="print the number of installed processors")), ToolInput(tag="in_ignore", input_type=String(optional=True), prefix="--ignore", doc=InputDocumentation(doc="if possible, exclude N processing units"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nproc_V0_1_0().translate("wdl", allow_empty_container=True)

