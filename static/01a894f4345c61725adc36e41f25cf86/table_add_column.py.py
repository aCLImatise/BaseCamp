from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Table_Add_Column_Py_V0_1_0 = CommandToolBuilder(tool="table_add_column.py", base_command=["table_add_column.py"], inputs=[ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="keep header in output")), ToolInput(tag="in_comments", input_type=Boolean(optional=True), prefix="--comments", doc=InputDocumentation(doc="keep comments in output")), ToolInput(tag="in_expression", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_colname", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Table_Add_Column_Py_V0_1_0().translate("wdl", allow_empty_container=True)

