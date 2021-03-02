from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

La4Falcon_V0_1_0 = CommandToolBuilder(tool="LA4Falcon", base_command=["LA4Falcon"], inputs=[ToolInput(tag="in_smfocargyufmpi", input_type=Boolean(optional=True), prefix="-smfocargyUFMPI", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    La4Falcon_V0_1_0().translate("wdl", allow_empty_container=True)

