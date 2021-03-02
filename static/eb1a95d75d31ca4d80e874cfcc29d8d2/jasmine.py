from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Jasmine_V0_1_0 = CommandToolBuilder(tool="jasmine", base_command=["jasmine"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jasmine_V0_1_0().translate("wdl", allow_empty_container=True)

