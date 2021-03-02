from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Pegasus_Find_Markers_V0_1_0 = CommandToolBuilder(tool="pegasus_find_markers", base_command=["pegasus", "find_markers"], inputs=[ToolInput(tag="in_use_threads_threads", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Use <threads> threads. [default: 1]")), ToolInput(tag="in_labels", input_type=String(optional=True), prefix="--labels", doc=InputDocumentation(doc="<attr> used as cluster labels. [default: louvain_labels]")), ToolInput(tag="in_de_key", input_type=String(optional=True), prefix="--de-key", doc=InputDocumentation(doc="Key for storing DE results in 'varm' field. [default: de_res]")), ToolInput(tag="in_remove_ribo", input_type=Boolean(optional=True), prefix="--remove-ribo", doc=InputDocumentation(doc="Remove ribosomal genes with either RPL or RPS as prefixes.")), ToolInput(tag="in_min_gain", input_type=Int(optional=True), prefix="--min-gain", doc=InputDocumentation(doc="Only report genes with a feature importance score (in gain) of at least <gain>. [default: 1.0]")), ToolInput(tag="in_random_state", input_type=Int(optional=True), prefix="--random-state", doc=InputDocumentation(doc="Random state for initializing LightGBM and KMeans. [default: 0]")), ToolInput(tag="in_input_data_file", input_type=String(), position=0, doc=InputDocumentation(doc="Single cell data after running the de_analysis."))], outputs=[], container="quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pegasus_Find_Markers_V0_1_0().translate("wdl")

