from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Nice_V0_1_0 = CommandToolBuilder(tool="nice", base_command=["nice"], inputs=[ToolInput(tag="in_most_favorable_process", input_type=Boolean(optional=True), prefix="-20", doc=InputDocumentation(doc="(most favorable to the process) to 19 (least favorable to the process).")), ToolInput(tag="in_adjustment", input_type=Int(optional=True), prefix="--adjustment", doc=InputDocumentation(doc="add integer N to the niceness (default 10)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nice_V0_1_0().translate("wdl", allow_empty_container=True)

