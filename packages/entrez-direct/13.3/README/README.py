from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Readme_V0_1_0 = CommandToolBuilder(tool="README", base_command=["README"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readme_V0_1_0().translate("wdl", allow_empty_container=True)

