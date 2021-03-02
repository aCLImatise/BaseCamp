from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Fast_Convert_V0_1_0 = CommandToolBuilder(tool="fast_convert", base_command=["fast_convert"], inputs=[ToolInput(tag="in_discard_q", input_type=Boolean(optional=True), prefix="--discard_q", doc=InputDocumentation(doc="Discard quality information from fastq, use with --mock_q.\n(default: False)")), ToolInput(tag="in_mock_q", input_type=Int(optional=True), prefix="--mock_q", doc=InputDocumentation(doc="Mock quality value, valid for convert=aq|qq. (default: 10)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fast_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

