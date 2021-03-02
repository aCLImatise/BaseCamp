from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Cluster_V0_1_0 = CommandToolBuilder(tool="bedtools_cluster", base_command=["bedtools", "cluster"], inputs=[ToolInput(tag="in_force_strandedness_is", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Force strandedness.  That is, only merge features\nthat are the same strand.\n- By default, merging is done without respect to strand.")), ToolInput(tag="in_maximum_distance_features", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Maximum distance between features allowed for features\nto be merged.\n- Def. 0. That is, overlapping & book-ended features are merged.\n- (INTEGER)\n")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

