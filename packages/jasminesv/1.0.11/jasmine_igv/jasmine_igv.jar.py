from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Jasmine_Igv_Jar_V0_1_0 = CommandToolBuilder(tool="jasmine_igv.jar", base_command=["jasmine_igv.jar"], inputs=[], outputs=[], container="quay.io/biocontainers/jasminesv:1.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jasmine_Igv_Jar_V0_1_0().translate("wdl")

