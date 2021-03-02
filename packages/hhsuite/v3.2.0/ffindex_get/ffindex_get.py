from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ffindex_Get_V0_1_0 = CommandToolBuilder(tool="ffindex_get", base_command=["ffindex_get"], inputs=[ToolInput(tag="in_use_index_name", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="use index of entry instead of entry name")), ToolInput(tag="in_data_filename", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_filename", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_entry", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_Get_V0_1_0().translate("wdl", allow_empty_container=True)

