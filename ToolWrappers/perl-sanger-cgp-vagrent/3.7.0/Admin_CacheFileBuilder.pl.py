from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Admin_Cachefilebuilder_Pl_V0_1_0 = CommandToolBuilder(tool="Admin_CacheFileBuilder.pl", base_command=["Admin_CacheFileBuilder.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Admin_Cachefilebuilder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

