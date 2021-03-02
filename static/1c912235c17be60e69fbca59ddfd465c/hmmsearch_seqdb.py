from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hmmsearch_Seqdb_V0_1_0 = CommandToolBuilder(tool="hmmsearch_seqdb", base_command=["hmmsearch", "seqdb"], inputs=[ToolInput(tag="in_hmm_search", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmm_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_db", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmsearch_Seqdb_V0_1_0().translate("wdl", allow_empty_container=True)

