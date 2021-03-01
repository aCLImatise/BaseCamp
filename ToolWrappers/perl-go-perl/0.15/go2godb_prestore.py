from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Go2Godb_Prestore_V0_1_0 = CommandToolBuilder(tool="go2godb_prestore", base_command=["go2godb_prestore"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Go2Godb_Prestore_V0_1_0().translate("wdl", allow_empty_container=True)

