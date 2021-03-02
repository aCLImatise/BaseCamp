from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Metagene_Outbase_Normcounts_Txt_V0_1_0 = CommandToolBuilder(tool="metagene_OUTBASE_normcounts.txt", base_command=["metagene", "OUTBASE_normcounts.txt"], inputs=[ToolInput(tag="in_meta_gene", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metagene_Outbase_Normcounts_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

