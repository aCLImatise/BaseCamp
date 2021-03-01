from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ffindex_Reduce_V0_1_0 = CommandToolBuilder(tool="ffindex_reduce", base_command=["ffindex_reduce"], inputs=[ToolInput(tag="in_data_filename", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_filename", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_program", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_program_args", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_Reduce_V0_1_0().translate("wdl", allow_empty_container=True)

