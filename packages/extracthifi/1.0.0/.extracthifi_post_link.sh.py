from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Extracthifi_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".extracthifi_post_link.sh", base_command=[".extracthifi-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/extracthifi:1.0.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Extracthifi_Post_Link_Sh_V0_1_0().translate("wdl")

