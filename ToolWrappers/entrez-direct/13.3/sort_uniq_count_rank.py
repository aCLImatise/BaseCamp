from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Sort_Uniq_Count_Rank_V0_1_0 = CommandToolBuilder(tool="sort_uniq_count_rank", base_command=["sort-uniq-count-rank"], inputs=[ToolInput(tag="in_prefix_lines_number", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Prefix lines by the number of occurrences")), ToolInput(tag="in_only_print_duplicate", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Only print duplicate lines")), ToolInput(tag="in_only_print_lines", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Only print unique lines")), ToolInput(tag="in_skip_first_n_fields", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Skip first N fields")), ToolInput(tag="in_skip_first_n_chars", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="Skip first N chars (after any skipped fields)")), ToolInput(tag="in_compare_n_characters", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="Compare N characters in line")), ToolInput(tag="in_cdu", input_type=Boolean(optional=True), prefix="-cdu", doc=InputDocumentation(doc="")), ToolInput(tag="in_uniq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort_Uniq_Count_Rank_V0_1_0().translate("wdl", allow_empty_container=True)

