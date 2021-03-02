from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Stripgapcolumns_V0_1_0 = CommandToolBuilder(tool="stripGapColumns", base_command=["stripGapColumns"], inputs=[ToolInput(tag="in_input_x_mfa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_x_mfa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stripgapcolumns_V0_1_0().translate("wdl", allow_empty_container=True)

