from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Monocle3_Ordercells_V0_1_0 = CommandToolBuilder(tool="monocle3_orderCells", base_command=["monocle3", "orderCells"], inputs=[ToolInput(tag="in_input_object_format", input_type=Int(optional=True), prefix="--input-object-format", doc=InputDocumentation(doc="Format of input object. [Default: cds3]")), ToolInput(tag="in_output_object_format", input_type=Int(optional=True), prefix="--output-object-format", doc=InputDocumentation(doc="Format of output object. [Default: cds3]")), ToolInput(tag="in_introspective", input_type=Boolean(optional=True), prefix="--introspective", doc=InputDocumentation(doc="Print introspective information of the output object.")), ToolInput(tag="in_root_pr_nodes", input_type=String(optional=True), prefix="--root-pr-nodes", doc=InputDocumentation(doc="The starting principal points. We learn a principal graph that passes\nthrough the middle of the data points and use it to represent the\ndevelopmental process. Exclusive with --root-cells.")), ToolInput(tag="in_root_cells", input_type=String(optional=True), prefix="--root-cells", doc=InputDocumentation(doc="The starting cells. Each cell corresponds to a principal point and multiple cells can correspond to the same principal point. Exclusive with --root-pr-nodes.")), ToolInput(tag="in_cell_phenotype", input_type=String(optional=True), prefix="--cell-phenotype", doc=InputDocumentation(doc="The cell phenotype (column in pdata) used to identify root principal nodes.")), ToolInput(tag="in_root_type", input_type=String(optional=True), prefix="--root-type", doc=InputDocumentation(doc="The value of the phenotype specified by '--cell-pheontype' that defines cells root principal nodes.")), ToolInput(tag="in_reduction_method", input_type=String(optional=True), prefix="--reduction-method", doc=InputDocumentation(doc="The dimensionality reduction that was used for clustering, choose from {UMAP, tSNE, PCA, LSI}. [Default: UMAP]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Emit verbose output.")), ToolInput(tag="in_input_object", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_object", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Monocle3_Ordercells_V0_1_0().translate("wdl", allow_empty_container=True)

