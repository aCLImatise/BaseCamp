from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Scran_Cli_Filter_Sce_R_V0_1_0 = CommandToolBuilder(tool="scran_cli_filter_sce.R", base_command=["scran-cli-filter-sce.R"], inputs=[ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="Path to the input SCE object in rds format.")), ToolInput(tag="in_exprs_values", input_type=String(optional=True), prefix="--exprs-values", doc=InputDocumentation(doc="String indicating which assay contains the count data that should be used to compute log-transformed expression values.")), ToolInput(tag="in_min_genes", input_type=Int(optional=True), prefix="--min-genes", doc=InputDocumentation(doc="Minimum number of genes to be expressed per cell to pass filtering.")), ToolInput(tag="in_min_cells", input_type=Int(optional=True), prefix="--min-cells", doc=InputDocumentation(doc="Minimum number of cells for a gene to be expressed to pass filtering.")), ToolInput(tag="in_spikes", input_type=Int(optional=True), prefix="--spikes", doc=InputDocumentation(doc="String or integer scalar specifying the alternative experiment containing the spike-in transcripts. Default; 'ERCC'")), ToolInput(tag="in_n_spikes", input_type=Int(optional=True), prefix="--n-spikes", doc=InputDocumentation(doc="Integer specifying the number of genes to add as spike-ins in case there is are no spike-ins in the 'ERCC' slot. Default: 25.")), ToolInput(tag="in_log", input_type=String(optional=True), prefix="--log", doc=InputDocumentation(doc="Logical specifying wether log-transformation of CPM counts should be performed.")), ToolInput(tag="in_output_sce_object", input_type=File(optional=True), prefix="--output-sce-object", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scran_Cli_Filter_Sce_R_V0_1_0().translate("wdl", allow_empty_container=True)

