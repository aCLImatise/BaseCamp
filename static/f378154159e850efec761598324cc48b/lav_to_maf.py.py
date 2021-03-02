from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Lav_To_Maf_Py_V0_1_0 = CommandToolBuilder(tool="lav_to_maf.py", base_command=["lav_to_maf.py"], inputs=[ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lav_To_Maf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

