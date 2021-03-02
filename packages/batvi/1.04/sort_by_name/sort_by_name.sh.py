from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sort_By_Name_Sh_V0_1_0 = CommandToolBuilder(tool="sort_by_name.sh", base_command=["sort_by_name.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort_By_Name_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

