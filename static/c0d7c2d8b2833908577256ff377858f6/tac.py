from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tac_V0_1_0 = CommandToolBuilder(tool="tac", base_command=["tac"], inputs=[ToolInput(tag="in_before", input_type=Boolean(optional=True), prefix="--before", doc=InputDocumentation(doc="attach the separator before instead of after")), ToolInput(tag="in_regex", input_type=Boolean(optional=True), prefix="--regex", doc=InputDocumentation(doc="interpret the separator as a regular expression")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="use STRING as the separator instead of newline"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tac_V0_1_0().translate("wdl", allow_empty_container=True)

