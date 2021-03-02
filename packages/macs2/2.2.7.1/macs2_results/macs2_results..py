from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Macs2_Results__V0_1_0 = CommandToolBuilder(tool="macs2_results.", base_command=["macs2", "results."], inputs=[ToolInput(tag="in_macs_two", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Macs2_Results__V0_1_0().translate("wdl", allow_empty_container=True)

