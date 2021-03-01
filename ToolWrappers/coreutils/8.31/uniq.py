from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Uniq_V0_1_0 = CommandToolBuilder(tool="uniq", base_command=["uniq"], inputs=[ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="prefix lines by the number of occurrences")), ToolInput(tag="in_repeated", input_type=Boolean(optional=True), prefix="--repeated", doc=InputDocumentation(doc="only print duplicate lines, one for each group")), ToolInput(tag="in_print_duplicate_lines", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="print all duplicate lines")), ToolInput(tag="in_all_repeated", input_type=Boolean(optional=True), prefix="--all-repeated", doc=InputDocumentation(doc="[=METHOD]  like -D, but allow separating groups\nwith an empty line;\nMETHOD={none(default),prepend,separate}")), ToolInput(tag="in_skip_fields", input_type=String(optional=True), prefix="--skip-fields", doc=InputDocumentation(doc="avoid comparing the first N fields")), ToolInput(tag="in_group", input_type=Boolean(optional=True), prefix="--group", doc=InputDocumentation(doc="[=METHOD]  show all items, separating groups with an empty line;\nMETHOD={separate(default),prepend,append,both}")), ToolInput(tag="in_ignore_case", input_type=Boolean(optional=True), prefix="--ignore-case", doc=InputDocumentation(doc="ignore differences in case when comparing")), ToolInput(tag="in_skip_chars", input_type=String(optional=True), prefix="--skip-chars", doc=InputDocumentation(doc="avoid comparing the first N characters")), ToolInput(tag="in_unique", input_type=Boolean(optional=True), prefix="--unique", doc=InputDocumentation(doc="only print unique lines")), ToolInput(tag="in_zero_terminated", input_type=Boolean(optional=True), prefix="--zero-terminated", doc=InputDocumentation(doc="line delimiter is NUL, not newline")), ToolInput(tag="in_check_chars", input_type=String(optional=True), prefix="--check-chars", doc=InputDocumentation(doc="compare no more than N characters in lines"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uniq_V0_1_0().translate("wdl", allow_empty_container=True)

