from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tsv_V0_1_0 = CommandToolBuilder(tool="tsv", base_command=["tsv"], inputs=[ToolInput(tag="in_quit_once_end", input_type=Boolean(optional=True), prefix="-E", doc=InputDocumentation(doc="Quit once the end of a file is reached")), ToolInput(tag="in_display_status_line", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="Display status line with line numbers\nand percentage through the file")), ToolInput(tag="in_prefix_line_number", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="Prefix line number to each line")), ToolInput(tag="in_ignore_case_searches", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="Ignore case in all searches")), ToolInput(tag="in_less", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

