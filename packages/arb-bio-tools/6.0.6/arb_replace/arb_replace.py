from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Arb_Replace_V0_1_0 = CommandToolBuilder(tool="arb_replace", base_command=["arb_replace"], inputs=[ToolInput(tag="in_linemode_parse_line", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="linemode, parse each line separately")), ToolInput(tag="in_linemode_parse_lines", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="linemode, parse each line separately, delete empty lines")), ToolInput(tag="in_patchmode_wildcards_allowed", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="patchmode, (no wildcards allowed, rightside<leftside)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Replace_V0_1_0().translate("wdl", allow_empty_container=True)

