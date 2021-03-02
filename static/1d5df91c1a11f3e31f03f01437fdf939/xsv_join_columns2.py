from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Xsv_Join_Columns2_V0_1_0 = CommandToolBuilder(tool="xsv_join_columns2", base_command=["xsv", "join", "columns2"], inputs=[ToolInput(tag="in_xsv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_join", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_columns_one", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_one", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_columns_two", input_type=Int(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Join_Columns2_V0_1_0().translate("wdl", allow_empty_container=True)

