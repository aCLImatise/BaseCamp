from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Go_Apply_Xslt_V0_1_0 = CommandToolBuilder(tool="go_apply_xslt", base_command=["go-apply-xslt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Go_Apply_Xslt_V0_1_0().translate("wdl", allow_empty_container=True)

