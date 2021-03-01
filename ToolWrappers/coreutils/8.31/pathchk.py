from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pathchk_V0_1_0 = CommandToolBuilder(tool="pathchk", base_command=["pathchk"], inputs=[ToolInput(tag="in_check_most_posix", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="check for most POSIX systems")), ToolInput(tag="in_check_empty_leading", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="check for empty names and leading '-'")), ToolInput(tag="in_portability", input_type=Boolean(optional=True), prefix="--portability", doc=InputDocumentation(doc="check for all POSIX systems (equivalent to -p -P)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathchk_V0_1_0().translate("wdl", allow_empty_container=True)

