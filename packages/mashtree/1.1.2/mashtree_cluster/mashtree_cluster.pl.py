from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mashtree_Cluster_Pl_V0_1_0 = CommandToolBuilder(tool="mashtree_cluster.pl", base_command=["mashtree_cluster.pl"], inputs=[ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="--threshold", doc=InputDocumentation(doc="0.1       Maximum any two genomes can be\nfrom the seed in a given cluster")), ToolInput(tag="in_nonzero", input_type=Boolean(optional=True), prefix="--nonzero", doc=InputDocumentation(doc="1e-99     Zero distance is not tolerated\nin this script. Give a nonzero\nvalue in case a zero distance\nis found.")), ToolInput(tag="in_num_cpus", input_type=Boolean(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="1         Not currently used."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mashtree_Cluster_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

