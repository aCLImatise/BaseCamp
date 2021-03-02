from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Seq_V0_1_0 = CommandToolBuilder(tool="seq", base_command=["seq"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="use printf style floating-point FORMAT")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="use STRING to separate numbers (default: \n)")), ToolInput(tag="in_equal_width", input_type=Boolean(optional=True), prefix="--equal-width", doc=InputDocumentation(doc="equalize width by padding with leading zeroes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq_V0_1_0().translate("wdl", allow_empty_container=True)

