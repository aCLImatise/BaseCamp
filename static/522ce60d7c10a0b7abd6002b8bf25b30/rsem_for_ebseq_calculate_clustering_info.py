from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_For_Ebseq_Calculate_Clustering_Info_V0_1_0 = CommandToolBuilder(tool="rsem_for_ebseq_calculate_clustering_info", base_command=["rsem-for-ebseq-calculate-clustering-info"], inputs=[ToolInput(tag="in_k", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_reference_fast_a_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_For_Ebseq_Calculate_Clustering_Info_V0_1_0().translate("wdl", allow_empty_container=True)

