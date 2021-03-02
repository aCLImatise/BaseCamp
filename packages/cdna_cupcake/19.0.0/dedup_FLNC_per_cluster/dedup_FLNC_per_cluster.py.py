from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dedup_Flnc_Per_Cluster_Py_V0_1_0 = CommandToolBuilder(tool="dedup_FLNC_per_cluster.py", base_command=["dedup_FLNC_per_cluster.py"], inputs=[ToolInput(tag="in_gff", input_type=String(optional=True), prefix="--gff", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc="")), ToolInput(tag="in_de_duplicate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fl_nc", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_per", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_cluster", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dedup_Flnc_Per_Cluster_Py_V0_1_0().translate("wdl")

