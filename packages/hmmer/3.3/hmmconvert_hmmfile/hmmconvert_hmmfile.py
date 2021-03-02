from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Hmmconvert_Hmmfile_V0_1_0 = CommandToolBuilder(tool="hmmconvert_hmmfile", base_command=["hmmconvert", "hmmfile"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmconvert_Hmmfile_V0_1_0().translate("wdl", allow_empty_container=True)

