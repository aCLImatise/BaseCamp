from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Py_V0_1_0 = CommandToolBuilder(tool="py", base_command=["py"], inputs=[ToolInput(tag="in_treat_row_stdin", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="treat each row of stdin as x")), ToolInput(tag="in_treat_list_stdin", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="treat list of stdin as l")), ToolInput(tag="in_run_code_before_expression", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="run code before expression")), ToolInput(tag="in_run_code_after_expression", input_type=String(optional=True), prefix="-C", doc=InputDocumentation(doc="run code after expression")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="")), ToolInput(tag="in_expression", input_type=String(), position=0, doc=InputDocumentation(doc="e.g. py '2 ** 32'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Py_V0_1_0().translate("wdl", allow_empty_container=True)

