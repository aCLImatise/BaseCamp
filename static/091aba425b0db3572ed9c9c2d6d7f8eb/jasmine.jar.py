from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Jasmine_Jar_V0_1_0 = CommandToolBuilder(tool="jasmine.jar", base_command=["jasmine.jar"], inputs=[], outputs=[], container="quay.io/biocontainers/jasminesv:1.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jasmine_Jar_V0_1_0().translate("wdl")

