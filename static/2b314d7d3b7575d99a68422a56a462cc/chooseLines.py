from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Chooselines_V0_1_0 = CommandToolBuilder(tool="chooseLines", base_command=["chooseLines"], inputs=[ToolInput(tag="in_number_choose_default", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="Number of lines to choose (default is all lines).")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chooselines_V0_1_0().translate("wdl", allow_empty_container=True)

