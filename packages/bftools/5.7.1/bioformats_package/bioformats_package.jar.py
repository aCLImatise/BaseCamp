from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bioformats_Package_Jar_V0_1_0 = CommandToolBuilder(tool="bioformats_package.jar", base_command=["bioformats_package.jar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Package_Jar_V0_1_0().translate("wdl", allow_empty_container=True)

