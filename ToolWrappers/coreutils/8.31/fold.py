from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Fold_V0_1_0 = CommandToolBuilder(tool="fold", base_command=["fold"], inputs=[ToolInput(tag="in_bytes", input_type=Boolean(optional=True), prefix="--bytes", doc=InputDocumentation(doc="count bytes rather than columns")), ToolInput(tag="in_spaces", input_type=Boolean(optional=True), prefix="--spaces", doc=InputDocumentation(doc="break at spaces")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="use WIDTH columns instead of 80"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fold_V0_1_0().translate("wdl", allow_empty_container=True)

