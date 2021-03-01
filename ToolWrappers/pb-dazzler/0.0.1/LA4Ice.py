from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

La4Ice_V0_1_0 = CommandToolBuilder(tool="LA4Ice", base_command=["LA4Ice"], inputs=[ToolInput(tag="in_car_me_uf", input_type=Boolean(optional=True), prefix="-carmEUF", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    La4Ice_V0_1_0().translate("wdl", allow_empty_container=True)

