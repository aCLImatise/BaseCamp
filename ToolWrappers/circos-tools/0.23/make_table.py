from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Make_Table_V0_1_0 = CommandToolBuilder(tool="make_table", base_command=["make-table"], inputs=[ToolInput(tag="in_cols", input_type=Int(optional=True), prefix="-cols", doc=InputDocumentation(doc="")), ToolInput(tag="in_rows", input_type=Int(optional=True), prefix="-rows", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Table_V0_1_0().translate("wdl", allow_empty_container=True)

