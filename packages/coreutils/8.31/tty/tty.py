from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tty_V0_1_0 = CommandToolBuilder(tool="tty", base_command=["tty"], inputs=[ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="print nothing, only return an exit status"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tty_V0_1_0().translate("wdl", allow_empty_container=True)

