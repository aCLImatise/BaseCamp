from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Echo_V0_1_0 = CommandToolBuilder(tool="echo", base_command=["echo"], inputs=[ToolInput(tag="in_output_trailing_newline", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="do not output the trailing newline")), ToolInput(tag="in_enable_interpretation_backslash", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="enable interpretation of backslash escapes")), ToolInput(tag="in_disable_interpretation_backslash", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="disable interpretation of backslash escapes (default)")), ToolInput(tag="in_short_option", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Echo_V0_1_0().translate("wdl", allow_empty_container=True)

