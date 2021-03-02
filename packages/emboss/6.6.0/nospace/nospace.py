from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nospace_V0_1_0 = CommandToolBuilder(tool="nospace", base_command=["nospace"], inputs=[ToolInput(tag="in_menu", input_type=Boolean(optional=True), prefix="-menu", doc=InputDocumentation(doc="menu       [all] Remove whitespace (Values: all (all\nwhitespace); end (trailing whitespace);\nexcess (multiple whitespace characters))"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nospace_V0_1_0().translate("wdl", allow_empty_container=True)

