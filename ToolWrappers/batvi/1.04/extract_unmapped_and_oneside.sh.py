from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extract_Unmapped_And_Oneside_Sh_V0_1_0 = CommandToolBuilder(tool="extract_unmapped_and_oneside.sh", base_command=["extract_unmapped_and_oneside.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Unmapped_And_Oneside_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

