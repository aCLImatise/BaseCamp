from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Demo_Regexp_V0_1_0 = CommandToolBuilder(tool="demo_regexp", base_command=["demo_regexp"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Demo_Regexp_V0_1_0().translate("wdl", allow_empty_container=True)

