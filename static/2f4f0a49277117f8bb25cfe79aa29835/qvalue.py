from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Qvalue_V0_1_0 = CommandToolBuilder(tool="qvalue", base_command=["qvalue"], inputs=[ToolInput(tag="in_good_score", input_type=File(optional=True), prefix="--good-score", doc=InputDocumentation(doc="|low")), ToolInput(tag="in_header", input_type=Int(optional=True), prefix="--header", doc=InputDocumentation(doc="(default=0)")), ToolInput(tag="in_column", input_type=Int(optional=True), prefix="--column", doc=InputDocumentation(doc="(default=1)")), ToolInput(tag="in_append", input_type=Int(optional=True), prefix="--append", doc=InputDocumentation(doc="(default from clock)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="|2|3|4 (default = 2)")), ToolInput(tag="in_p_values", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qvalue_V0_1_0().translate("wdl")

