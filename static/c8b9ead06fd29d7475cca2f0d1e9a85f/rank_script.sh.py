from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rank_Script_Sh_V0_1_0 = CommandToolBuilder(tool="rank_script.sh", base_command=["rank-script.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rank_Script_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

