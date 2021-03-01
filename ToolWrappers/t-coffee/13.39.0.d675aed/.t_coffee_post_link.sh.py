from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_T_Coffee_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".t_coffee_post_link.sh", base_command=[".t-coffee-post-link.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _T_Coffee_Post_Link_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

