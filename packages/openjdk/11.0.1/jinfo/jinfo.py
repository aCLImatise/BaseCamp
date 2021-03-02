from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Jinfo_V0_1_0 = CommandToolBuilder(tool="jinfo", base_command=["jinfo"], inputs=[ToolInput(tag="in_flags", input_type=Boolean(optional=True), prefix="-flags", doc=InputDocumentation(doc="to print VM flags")), ToolInput(tag="in_sys_props", input_type=Boolean(optional=True), prefix="-sysprops", doc=InputDocumentation(doc="to print Java system properties")), ToolInput(tag="in_option", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pid", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jinfo_V0_1_0().translate("wdl", allow_empty_container=True)

