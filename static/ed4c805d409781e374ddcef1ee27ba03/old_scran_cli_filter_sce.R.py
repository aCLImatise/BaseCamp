from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Old_Scran_Cli_Filter_Sce_R_V0_1_0 = CommandToolBuilder(tool="old_scran_cli_filter_sce.R", base_command=["old-scran-cli-filter-sce.R"], inputs=[ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="File name in which a serialized R SingleCellExperiment object where object matrix found")), ToolInput(tag="in_exprs_values", input_type=String(optional=True), prefix="--exprs-values", doc=InputDocumentation(doc="String indicating which assay contains the count data that should be used to compute log-transformed expression values.")), ToolInput(tag="in_n_genes", input_type=Int(optional=True), prefix="--n-genes", doc=InputDocumentation(doc="Integer indicating how many genes should we sample from the input object.")), ToolInput(tag="in_n_cells", input_type=Int(optional=True), prefix="--n-cells", doc=InputDocumentation(doc="Integer indicating how many cells should we sample from the input object.")), ToolInput(tag="in_spikes", input_type=Int(optional=True), prefix="--spikes", doc=InputDocumentation(doc="String or integer scalar specifying the alternative experiment containing the spike-in transcripts.")), ToolInput(tag="in_output_sce_object", input_type=File(optional=True), prefix="--output-sce-object", doc=InputDocumentation(doc="File name in which to store serialized R object of type 'SingleCellExperiment'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Old_Scran_Cli_Filter_Sce_R_V0_1_0().translate("wdl", allow_empty_container=True)

