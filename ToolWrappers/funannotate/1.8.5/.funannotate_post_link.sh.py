from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Funannotate_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".funannotate_post_link.sh", base_command=[".funannotate-post-link.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Funannotate_Post_Link_Sh_V0_1_0().translate("wdl")

