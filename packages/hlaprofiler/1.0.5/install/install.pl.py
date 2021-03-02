from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Install_Pl_V0_1_0 = CommandToolBuilder(tool="install.pl", base_command=["install.pl"], inputs=[ToolInput(tag="in_make", input_type=String(), position=0, doc=InputDocumentation(doc="make install"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Install_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

