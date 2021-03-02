from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Scepia_Infer_Motifs_V0_1_0 = CommandToolBuilder(tool="scepia_infer_motifs", base_command=["scepia", "infer_motifs"], inputs=[ToolInput(tag="in_transpose", input_type=Boolean(optional=True), prefix="--transpose", doc=InputDocumentation(doc="Transpose matrix.")), ToolInput(tag="in_cluster", input_type=String(optional=True), prefix="--cluster", doc=InputDocumentation(doc="cluster name (default checks for 'louvain' or\n'leiden').")), ToolInput(tag="in_dataset", input_type=Int(optional=True), prefix="--dataset", doc=InputDocumentation(doc="Reference dataset (ENCODE.H3K27ac.human).")), ToolInput(tag="in_n_top_genes", input_type=Int(optional=True), prefix="--n_top_genes", doc=InputDocumentation(doc="Maximum number of variable genes that is used\n(2000).")), ToolInput(tag="in_pfm_file", input_type=File(optional=True), prefix="--pfmfile", doc=InputDocumentation(doc="Name of motif PFM file or GimmeMotifs database")), ToolInput(tag="in_num_enhancers", input_type=Int(optional=True), prefix="--num_enhancers", doc=InputDocumentation(doc="Number of enhancers to use for motif activity\n(10000).")), ToolInput(tag="in_name_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-a, --min_annotated INTEGER  Minimum number of cells per cell type (50)."))], outputs=[], container="quay.io/biocontainers/scepia:0.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scepia_Infer_Motifs_V0_1_0().translate("wdl")

