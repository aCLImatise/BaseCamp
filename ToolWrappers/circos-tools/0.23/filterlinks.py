from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Filterlinks_V0_1_0 = CommandToolBuilder(tool="filterlinks", base_command=["filterlinks"], inputs=[ToolInput(tag="in_no_intra", input_type=Boolean(optional=True), prefix="-nointra", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_inter", input_type=Boolean(optional=True), prefix="-nointer", doc=InputDocumentation(doc="")), ToolInput(tag="in_links", input_type=File(optional=True), prefix="-links", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterlinks_V0_1_0().translate("wdl", allow_empty_container=True)

