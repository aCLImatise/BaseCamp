from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Juncs_Db_V0_1_0 = CommandToolBuilder(tool="juncs_db", base_command=["juncs_db"], inputs=[ToolInput(tag="in_min_anchor", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_length", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Juncs_Db_V0_1_0().translate("wdl", allow_empty_container=True)

