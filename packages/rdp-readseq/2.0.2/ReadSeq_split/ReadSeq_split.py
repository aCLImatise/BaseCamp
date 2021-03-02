from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Readseq_Split_V0_1_0 = CommandToolBuilder(tool="ReadSeq_split", base_command=["ReadSeq", "split"], inputs=[ToolInput(tag="in_seq_file_splitter", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_outdir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_per_split", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readseq_Split_V0_1_0().translate("wdl", allow_empty_container=True)

