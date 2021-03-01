from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Blasr_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".blasr_post_link.sh", base_command=[".blasr-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/blasr:5.3.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Blasr_Post_Link_Sh_V0_1_0().translate("wdl")

