from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Amosvalidate_V0_1_0 = CommandToolBuilder(tool="amosvalidate", base_command=["amosvalidate"], inputs=[ToolInput(tag="in_use_clear_range", input_type=Int(optional=True), prefix="-D", doc=InputDocumentation(doc="=<n>   Use the clear range of the reads? (0:no 1:yes,\ndefault: 1)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amosvalidate_V0_1_0().translate("wdl", allow_empty_container=True)

