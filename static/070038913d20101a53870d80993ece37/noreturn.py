from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Noreturn_V0_1_0 = CommandToolBuilder(tool="noreturn", base_command=["noreturn"], inputs=[ToolInput(tag="in_system", input_type=Boolean(optional=True), prefix="-system", doc=InputDocumentation(doc="menu       [unix] Target operating system for\nend-of-line format (Values: unix (Unix/Linux\nsystems); pc (Windows/DOS); mac (Apple\nMacintosh))"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Noreturn_V0_1_0().translate("wdl", allow_empty_container=True)

