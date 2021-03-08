from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Open_Cravat_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".open_cravat_post_link.sh", base_command=[".open-cravat-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Open_Cravat_Post_Link_Sh_V0_1_0().translate("wdl")

