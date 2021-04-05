from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Poppunk_Mst_V0_1_0 = CommandToolBuilder(tool="poppunk_mst", base_command=["poppunk_mst"], inputs=[ToolInput(tag="in_rank_fit", input_type=String(optional=True), prefix="--rank-fit", doc=InputDocumentation(doc="Location of rank fit, a sparse matrix\n(*_rank*_fit.npz)")), ToolInput(tag="in_previous_clustering", input_type=File(optional=True), prefix="--previous-clustering", doc=InputDocumentation(doc="CSV file with cluster definitions")), ToolInput(tag="in_previous_mst", input_type=File(optional=True), prefix="--previous-mst", doc=InputDocumentation(doc="Graph tool file from which previous MST can be loaded")), ToolInput(tag="in_distance_pkl", input_type=String(optional=True), prefix="--distance-pkl", doc=InputDocumentation(doc="Input pickle from distances, which contains sample\nnames")), ToolInput(tag="in_display_cluster", input_type=String(optional=True), prefix="--display-cluster", doc=InputDocumentation(doc="Column of clustering CSV to use for plotting")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Prefix for output files (required)")), ToolInput(tag="in_no_plot", input_type=Boolean(optional=True), prefix="--no-plot", doc=InputDocumentation(doc="Do not try and draw the MST")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use [default = 1]")), ToolInput(tag="in_gpu_graph", input_type=Boolean(optional=True), prefix="--gpu-graph", doc=InputDocumentation(doc="Use cugraph for the calculation"))], outputs=[], container="quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Mst_V0_1_0().translate("wdl")

