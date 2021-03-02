from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Base32_V0_1_0 = CommandToolBuilder(tool="base32", base_command=["base32"], inputs=[ToolInput(tag="in_decode", input_type=Boolean(optional=True), prefix="--decode", doc=InputDocumentation(doc="decode data")), ToolInput(tag="in_ignore_garbage", input_type=Boolean(optional=True), prefix="--ignore-garbage", doc=InputDocumentation(doc="when decoding, ignore non-alphabet characters")), ToolInput(tag="in_wrap", input_type=Int(optional=True), prefix="--wrap", doc=InputDocumentation(doc="wrap encoded lines after COLS character (default 76).\nUse 0 to disable line wrapping"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Base32_V0_1_0().translate("wdl", allow_empty_container=True)

