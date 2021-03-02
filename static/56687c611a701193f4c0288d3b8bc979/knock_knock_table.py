from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Knock_Knock_Table_V0_1_0 = CommandToolBuilder(tool="knock_knock_table", base_command=["knock-knock", "table"], inputs=[ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="if specified, the single group name to generate tables\nfor; if not specified, all groups will be generated\n")), ToolInput(tag="in_project_directory", input_type=String(), position=0, doc=InputDocumentation(doc="the base directory to store input data, reference\nannotations, and analysis output for a project"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knock_Knock_Table_V0_1_0().translate("wdl", allow_empty_container=True)

