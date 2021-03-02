from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hmmsearch_Hmmfile_V0_1_0 = CommandToolBuilder(tool="hmmsearch_hmmfile", base_command=["hmmsearch", "hmmfile"], inputs=[ToolInput(tag="in_seq_db", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmsearch_Hmmfile_V0_1_0().translate("wdl", allow_empty_container=True)

