from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Chartex_V0_1_0 = CommandToolBuilder(tool="chartex", base_command=["chartex"], inputs=[ToolInput(tag="in_man", input_type=String(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits.\n")), ToolInput(tag="in_chart_name", input_type=Boolean(optional=True), prefix="--chartname", doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_xls", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chartex_V0_1_0().translate("wdl", allow_empty_container=True)

