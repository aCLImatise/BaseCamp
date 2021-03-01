from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Drive_Clashes_V0_1_0 = CommandToolBuilder(tool="drive_clashes", base_command=["drive", "clashes"], inputs=[ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="-depth", doc=InputDocumentation(doc="maximum recursion depth (default -1)")), ToolInput(tag="in_fix", input_type=Boolean(optional=True), prefix="-fix", doc=InputDocumentation(doc="fix clashes by renaming or trashing files")), ToolInput(tag="in_fix_mode", input_type=String(optional=True), prefix="-fix-mode", doc=InputDocumentation(doc="set fix policy to rename or trash (default 'rename')")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="operate on clashes by id instead of by path")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="-list", doc=InputDocumentation(doc="list clashes (default true)")), ToolInput(tag="in_no_prompt", input_type=Boolean(optional=True), prefix="-no-prompt", doc=InputDocumentation(doc="shows no prompt before fixing clashes\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Clashes_V0_1_0().translate("wdl", allow_empty_container=True)

