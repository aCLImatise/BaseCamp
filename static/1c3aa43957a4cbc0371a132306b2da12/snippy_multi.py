from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snippy_Multi_V0_1_0 = CommandToolBuilder(tool="snippy_multi", base_command=["snippy-multi"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snippy_Multi_V0_1_0().translate("wdl", allow_empty_container=True)

