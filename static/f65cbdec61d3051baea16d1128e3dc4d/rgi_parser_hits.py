from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Rgi_Parser_Hits_V0_1_0 = CommandToolBuilder(tool="rgi_parser_hits", base_command=["rgi", "parser", "hits"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_include_loose", input_type=Boolean(optional=True), prefix="--include_loose", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_rgi", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_parser", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Parser_Hits_V0_1_0().translate("wdl")

