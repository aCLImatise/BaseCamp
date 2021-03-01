from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Jdeprscan_V0_1_0 = CommandToolBuilder(tool="jdeprscan", base_command=["jdeprscan"], inputs=[ToolInput(tag="in_release", input_type=Int(optional=True), prefix="--release", doc=InputDocumentation(doc="|7|8|9|10|11"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jdeprscan_V0_1_0().translate("wdl", allow_empty_container=True)

