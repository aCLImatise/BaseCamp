from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Comm_V0_1_0 = CommandToolBuilder(tool="comm", base_command=["comm"], inputs=[ToolInput(tag="in_one", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="suppress column 1 (lines unique to FILE1)")), ToolInput(tag="in_two", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="suppress column 2 (lines unique to FILE2)")), ToolInput(tag="in_suppress_column_lines_appear", input_type=Boolean(optional=True), prefix="-3", doc=InputDocumentation(doc="suppress column 3 (lines that appear in both files)")), ToolInput(tag="in_check_order", input_type=Boolean(optional=True), prefix="--check-order", doc=InputDocumentation(doc="check that the input is correctly sorted, even\nif all input lines are pairable")), ToolInput(tag="in_no_check_order", input_type=Boolean(optional=True), prefix="--nocheck-order", doc=InputDocumentation(doc="do not check that the input is correctly sorted")), ToolInput(tag="in_output_delimiter", input_type=String(optional=True), prefix="--output-delimiter", doc=InputDocumentation(doc="separate columns with STR")), ToolInput(tag="in_total", input_type=Boolean(optional=True), prefix="--total", doc=InputDocumentation(doc="output a summary")), ToolInput(tag="in_zero_terminated", input_type=Boolean(optional=True), prefix="--zero-terminated", doc=InputDocumentation(doc="line delimiter is NUL, not newline"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comm_V0_1_0().translate("wdl", allow_empty_container=True)

