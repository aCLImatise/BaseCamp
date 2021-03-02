from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Basename_V0_1_0 = CommandToolBuilder(tool="basename", base_command=["basename"], inputs=[ToolInput(tag="in_multiple", input_type=Boolean(optional=True), prefix="--multiple", doc=InputDocumentation(doc="support multiple arguments and treat each as a NAME")), ToolInput(tag="in_remove_trailing_suffix", input_type=String(optional=True), prefix="--suffix", doc=InputDocumentation(doc="remove a trailing SUFFIX; implies -a")), ToolInput(tag="in_end_output_line", input_type=Boolean(optional=True), prefix="--zero", doc=InputDocumentation(doc="end each output line with NUL, not newline")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basename_V0_1_0().translate("wdl", allow_empty_container=True)

