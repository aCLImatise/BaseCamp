from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Clust_V0_1_0 = CommandToolBuilder(tool="mmseqs_clust", base_command=["mmseqs", "clust"], inputs=[ToolInput(tag="in_cluster_mode", input_type=Boolean(optional=True), prefix="--cluster-mode", doc=InputDocumentation(doc="0               0: Setcover, 1: connected component, 2: Greedy clustering by sequence length  3: Greedy clustering by sequence length (low mem)")), ToolInput(tag="in_max_iterations", input_type=Boolean(optional=True), prefix="--max-iterations", doc=InputDocumentation(doc="1000            maximum depth of breadth first search in connected component")), ToolInput(tag="in_similarity_type", input_type=Boolean(optional=True), prefix="--similarity-type", doc=InputDocumentation(doc="2               type of score used for clustering [1:2]. 1=alignment score. 2=sequence identity")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Clust_V0_1_0().translate("wdl", allow_empty_container=True)

