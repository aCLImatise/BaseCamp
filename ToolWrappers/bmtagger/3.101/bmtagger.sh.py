from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bmtagger_Sh_V0_1_0 = CommandToolBuilder(tool="bmtagger.sh", base_command=["bmtagger.sh"], inputs=[ToolInput(tag="in_hv", input_type=Boolean(optional=True), prefix="-hV", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bmtagger_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

