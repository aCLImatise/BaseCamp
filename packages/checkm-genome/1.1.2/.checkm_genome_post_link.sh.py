from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Checkm_Genome_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".checkm_genome_post_link.sh", base_command=[".checkm-genome-post-link.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Checkm_Genome_Post_Link_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

