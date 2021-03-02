from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bedparse_Join_Bedfile_V0_1_0 = CommandToolBuilder(tool="bedparse_join_bedfile", base_command=["bedparse", "join", "bedfile"], inputs=[ToolInput(tag="in_column", input_type=String(optional=True), prefix="--column", doc=InputDocumentation(doc="")), ToolInput(tag="in_annotation", input_type=String(optional=True), prefix="--annotation", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_join", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedparse_Join_Bedfile_V0_1_0().translate("wdl", allow_empty_container=True)

