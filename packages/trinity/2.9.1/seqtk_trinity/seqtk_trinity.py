from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Seqtk_Trinity_V0_1_0 = CommandToolBuilder(tool="seqtk_trinity", base_command=["seqtk-trinity"], inputs=[ToolInput(tag="in_seq_tk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Trinity_V0_1_0().translate("wdl", allow_empty_container=True)

