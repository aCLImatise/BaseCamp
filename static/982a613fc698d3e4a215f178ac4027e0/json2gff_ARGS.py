from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Json2Gff_Args_V0_1_0 = CommandToolBuilder(tool="json2gff_ARGS", base_command=["json2gff", "ARGS"], inputs=[ToolInput(tag="in_json_two_gff", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Json2Gff_Args_V0_1_0().translate("wdl")

