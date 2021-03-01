from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Group_Sites_V0_1_0 = CommandToolBuilder(tool="iCount_group_sites", base_command=["iCount", "group", "sites"], inputs=[ToolInput(tag="in_m", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_i_count", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_group", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sites_grouped", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_sites", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Group_Sites_V0_1_0().translate("wdl", allow_empty_container=True)

