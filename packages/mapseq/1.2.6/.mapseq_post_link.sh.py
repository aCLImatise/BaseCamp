from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

_Mapseq_Post_Link_Sh_V0_1_0 = CommandToolBuilder(tool=".mapseq_post_link.sh", base_command=[".mapseq-post-link.sh"], inputs=[ToolInput(tag="in_d_load", input_type=String(), position=0, doc=InputDocumentation(doc="Upload   Total   Spent    Left  Speed"))], outputs=[], container="quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Mapseq_Post_Link_Sh_V0_1_0().translate("wdl")

