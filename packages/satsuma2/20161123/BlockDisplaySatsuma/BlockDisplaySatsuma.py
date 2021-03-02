from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Blockdisplaysatsuma_V0_1_0 = CommandToolBuilder(tool="BlockDisplaySatsuma", base_command=["BlockDisplaySatsuma"], inputs=[ToolInput(tag="in_string_summary_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="<string> : satsuma summary file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blockdisplaysatsuma_V0_1_0().translate("wdl", allow_empty_container=True)

