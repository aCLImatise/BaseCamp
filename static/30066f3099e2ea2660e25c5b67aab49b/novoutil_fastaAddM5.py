from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Novoutil_Fastaaddm5_V0_1_0 = CommandToolBuilder(tool="novoutil_fastaAddM5", base_command=["novoutil", "fastaAddM5"], inputs=[ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc="is the fasta files to be processed.\nInput files may be compressed with gzip or bzip."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Fastaaddm5_V0_1_0().translate("wdl", allow_empty_container=True)

