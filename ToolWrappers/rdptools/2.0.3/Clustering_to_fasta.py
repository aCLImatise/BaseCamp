from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Clustering_To_Fasta_V0_1_0 = CommandToolBuilder(tool="Clustering_to_fasta", base_command=["Clustering", "to-fasta"], inputs=[ToolInput(tag="in_to_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mask_seq_id", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_To_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

