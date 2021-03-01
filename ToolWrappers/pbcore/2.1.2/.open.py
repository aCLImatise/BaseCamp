from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Open_V0_1_0 = CommandToolBuilder(tool=".open", base_command=[".open"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Open_V0_1_0().translate("wdl", allow_empty_container=True)

