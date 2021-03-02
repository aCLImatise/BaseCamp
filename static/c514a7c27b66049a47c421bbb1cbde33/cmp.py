from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cmp_V0_1_0 = CommandToolBuilder(tool="cmp", base_command=["cmp"], inputs=[ToolInput(tag="in_print_bytes", input_type=Boolean(optional=True), prefix="--print-bytes", doc=InputDocumentation(doc="print differing bytes")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="output byte numbers and differing byte values")), ToolInput(tag="in_bytes", input_type=String(optional=True), prefix="--bytes", doc=InputDocumentation(doc="compare at most LIMIT bytes")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress all normal output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmp_V0_1_0().translate("wdl", allow_empty_container=True)

