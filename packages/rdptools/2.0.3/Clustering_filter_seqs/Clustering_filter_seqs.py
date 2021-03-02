from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clustering_Filter_Seqs_V0_1_0 = CommandToolBuilder(tool="Clustering_filter_seqs", base_command=["Clustering", "filter-seqs"], inputs=[ToolInput(tag="in_ids_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_remove", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Filter_Seqs_V0_1_0().translate("wdl", allow_empty_container=True)

