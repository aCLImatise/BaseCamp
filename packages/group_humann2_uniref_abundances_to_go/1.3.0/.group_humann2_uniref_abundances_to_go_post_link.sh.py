from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Group_Humann2_Uniref_Abundances_To_Go_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".group_humann2_uniref_abundances_to_go_post_link.sh", base_command=[".group_humann2_uniref_abundances_to_go-post-link.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Group_Humann2_Uniref_Abundances_To_Go_Post_Link_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

