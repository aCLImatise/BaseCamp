from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Easypqp_Pyprophet_V0_1_0 = CommandToolBuilder(tool="easypqp_PyProphet", base_command=["easypqp", "PyProphet"], inputs=[ToolInput(tag="in_easy_pqp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Easypqp_Pyprophet_V0_1_0().translate("wdl", allow_empty_container=True)

