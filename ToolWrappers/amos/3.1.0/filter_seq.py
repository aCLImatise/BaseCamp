from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Filter_Seq_V0_1_0 = CommandToolBuilder(tool="filter_seq", base_command=["filter_seq"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="-index", doc=InputDocumentation(doc="an index file of the copy file")), ToolInput(tag="in_good_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

