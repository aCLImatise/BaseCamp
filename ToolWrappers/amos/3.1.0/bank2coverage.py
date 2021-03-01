from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bank2Coverage_V0_1_0 = CommandToolBuilder(tool="bank2coverage", base_command=["bank2coverage"], inputs=[ToolInput(tag="in_bank_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_prefix", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank2Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

