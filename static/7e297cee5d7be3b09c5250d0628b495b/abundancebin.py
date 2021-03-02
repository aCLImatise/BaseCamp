from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Abundancebin_V0_1_0 = CommandToolBuilder(tool="abundancebin", base_command=["abundancebin"], inputs=[ToolInput(tag="in_bin_num", input_type=Boolean(optional=True), prefix="-bin_num", doc=InputDocumentation(doc="(bin number)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abundancebin_V0_1_0().translate("wdl", allow_empty_container=True)

