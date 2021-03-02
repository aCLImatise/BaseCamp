from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Scaffoldrange2Ungapped_V0_1_0 = CommandToolBuilder(tool="scaffoldRange2Ungapped", base_command=["scaffoldRange2Ungapped"], inputs=[ToolInput(tag="in_bank", input_type=Boolean(optional=True), prefix="-bank", doc=InputDocumentation(doc="bank where assembly is stored")), ToolInput(tag="in_file", input_type=Boolean(optional=True), prefix="-file", doc=InputDocumentation(doc="file containing list of gapped coordinates in the following form, one per line:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scaffoldrange2Ungapped_V0_1_0().translate("wdl", allow_empty_container=True)

