from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Krona_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".krona_post_link.sh", base_command=[".krona-post-link.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Krona_Post_Link_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

