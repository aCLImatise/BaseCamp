from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Makehmmerdb_Seqfile_V0_1_0 = CommandToolBuilder(tool="makehmmerdb_seqfile", base_command=["makehmmerdb", "seqfile"], inputs=[ToolInput(tag="in_binary_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makehmmerdb_Seqfile_V0_1_0().translate("wdl", allow_empty_container=True)

