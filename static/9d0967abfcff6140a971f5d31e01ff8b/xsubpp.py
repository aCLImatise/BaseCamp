from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Xsubpp_V0_1_0 = CommandToolBuilder(tool="xsubpp", base_command=["xsubpp"], inputs=[ToolInput(tag="in_no_arg_types", input_type=Boolean(optional=True), prefix="-noargtypes", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_inout", input_type=Boolean(optional=True), prefix="-noinout", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_optimize", input_type=Boolean(optional=True), prefix="-nooptimize", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_line_numbers", input_type=Boolean(optional=True), prefix="-nolinenumbers", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_version_check", input_type=Boolean(optional=True), prefix="-noversioncheck", doc=InputDocumentation(doc="")), ToolInput(tag="in_prototypes", input_type=Boolean(optional=True), prefix="-prototypes", doc=InputDocumentation(doc="")), ToolInput(tag="in_except", input_type=Boolean(optional=True), prefix="-except", doc=InputDocumentation(doc="")), ToolInput(tag="in_c_suffix", input_type=String(optional=True), prefix="-csuffix", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsubpp_V0_1_0().translate("wdl", allow_empty_container=True)

