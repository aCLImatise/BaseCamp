from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Jasmine_Jar_V0_1_0 = CommandToolBuilder(tool="jasmine.jar", base_command=["jasmine.jar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jasmine_Jar_V0_1_0().translate("wdl", allow_empty_container=True)

