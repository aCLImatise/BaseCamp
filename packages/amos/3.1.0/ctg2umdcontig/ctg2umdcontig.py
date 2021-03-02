from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ctg2Umdcontig_V0_1_0 = CommandToolBuilder(tool="ctg2umdcontig", base_command=["ctg2umdcontig"], inputs=[ToolInput(tag="in_file_dot_ctg", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_id_map", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tigr", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctg2Umdcontig_V0_1_0().translate("wdl", allow_empty_container=True)

