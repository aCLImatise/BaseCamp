from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Poppunk_Calculate_Silhouette_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_calculate_silhouette.py", base_command=["poppunk_calculate_silhouette.py"], inputs=[ToolInput(tag="in_distances", input_type=String(optional=True), prefix="--distances", doc=InputDocumentation(doc="Prefix of input pickle of pre-calculated distances\n(required)")), ToolInput(tag="in_cluster_csv", input_type=String(optional=True), prefix="--cluster-csv", doc=InputDocumentation(doc="Cluster assignments")), ToolInput(tag="in_cluster_col", input_type=Int(optional=True), prefix="--cluster-col", doc=InputDocumentation(doc="Column with cluster assignment (default = 2)")), ToolInput(tag="in_id_col", input_type=Int(optional=True), prefix="--id-col", doc=InputDocumentation(doc="Column with sample names (default = 1)")), ToolInput(tag="in_sub", input_type=String(optional=True), prefix="--sub", doc=InputDocumentation(doc="Remove string from sample names")), ToolInput(tag="in_calculate_silhouette", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/poppunk:2.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Calculate_Silhouette_Py_V0_1_0().translate("wdl")

