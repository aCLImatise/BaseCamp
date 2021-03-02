from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fatofastq_In_Fa_V0_1_0 = CommandToolBuilder(tool="faToFastq_in.fa", base_command=["faToFastq", "in.fa"], inputs=[ToolInput(tag="in_not_valid_option", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="not a valid option"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fatofastq_In_Fa_V0_1_0().translate("wdl", allow_empty_container=True)

