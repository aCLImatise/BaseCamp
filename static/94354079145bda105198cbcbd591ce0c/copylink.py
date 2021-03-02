from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Copylink_V0_1_0 = CommandToolBuilder(tool="copylink", base_command=["copylink"], inputs=[ToolInput(tag="in_a_usrlocalbincopylink_line", input_type=Int(optional=True), prefix="-h", doc=InputDocumentation(doc="a link\nat /usr/local/bin/copylink line 9.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Copylink_V0_1_0().translate("wdl", allow_empty_container=True)

