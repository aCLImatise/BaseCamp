from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Hed_V0_1_0 = CommandToolBuilder(tool="hed", base_command=["hed"], inputs=[ToolInput(tag="in_string_one", input_type=Int(optional=True), prefix="--string1", doc=InputDocumentation(doc="first string. Use quotation marks around your string\n(e.g. 'STRING')for the empty string or strings with\nspecial characters")), ToolInput(tag="in_string_two", input_type=Int(optional=True), prefix="--string2", doc=InputDocumentation(doc="second string")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="show all optimal subsequences")), ToolInput(tag="in_backtrace", input_type=Boolean(optional=True), prefix="--backtrace", doc=InputDocumentation(doc="print transformation steps"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hed_V0_1_0().translate("wdl", allow_empty_container=True)

