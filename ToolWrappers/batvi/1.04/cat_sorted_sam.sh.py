from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cat_Sorted_Sam_Sh_V0_1_0 = CommandToolBuilder(tool="cat_sorted_sam.sh", base_command=["cat_sorted_sam.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cat_Sorted_Sam_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

