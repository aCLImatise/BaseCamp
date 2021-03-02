from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Homologybyxcorrslave_V0_1_0 = CommandToolBuilder(tool="HomologyByXCorrSlave", base_command=["HomologyByXCorrSlave"], inputs=[ToolInput(tag="in_master", input_type=Boolean(optional=True), prefix="-master", doc=InputDocumentation(doc="<string> : name of the submit host"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Homologybyxcorrslave_V0_1_0().translate("wdl", allow_empty_container=True)

