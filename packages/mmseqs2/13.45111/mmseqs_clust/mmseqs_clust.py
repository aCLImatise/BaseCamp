from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Mmseqs_Clust_V0_1_0 = CommandToolBuilder(tool="mmseqs_clust", base_command=["mmseqs", "clust"], inputs=[ToolInput(tag="in_cluster_mode", input_type=Int(optional=True), prefix="--cluster-mode", doc=InputDocumentation(doc="0: Set-Cover (greedy)\n1: Connected component (BLASTclust)\n2,3: Greedy clustering by sequence length (CDHIT) [0]")), ToolInput(tag="in_max_iterations", input_type=Int(optional=True), prefix="--max-iterations", doc=InputDocumentation(doc="Maximum depth of breadth first search in connected component clustering [1000]")), ToolInput(tag="in_similarity_type", input_type=Int(optional=True), prefix="--similarity-type", doc=InputDocumentation(doc="Type of score used for clustering. 1: alignment score 2: sequence identity [2]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Clust_V0_1_0().translate("wdl")

