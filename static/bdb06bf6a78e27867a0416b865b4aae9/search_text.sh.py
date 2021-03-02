from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Search_Text_Sh_V0_1_0 = CommandToolBuilder(tool="search_text.sh", base_command=["search_text.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Search_Text_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

