from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Xsv_Join_Columns1_V0_1_0 = CommandToolBuilder(tool="xsv_join_columns1", base_command=["xsv", "join", "columns1"], inputs=[ToolInput(tag="in_input_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_xsv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_columns_two", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_join", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Join_Columns1_V0_1_0().translate("wdl", allow_empty_container=True)

