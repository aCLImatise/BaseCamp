from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Scran_Compute_Sum_Factors_R_V0_1_0 = CommandToolBuilder(tool="scran_compute_sum_factors.R", base_command=["scran-compute-sum-factors.R"], inputs=[ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="Path to the input SCE object in rds format.")), ToolInput(tag="in_assay_type", input_type=String(optional=True), prefix="--assay-type", doc=InputDocumentation(doc="Specify which assay values to use. Default: 'logcounts'.")), ToolInput(tag="in_sizes", input_type=Int(optional=True), prefix="--sizes", doc=InputDocumentation(doc="A numeric vector of pool sizes, i.e., number of cells per pool.")), ToolInput(tag="in_clusters", input_type=String(optional=True), prefix="--clusters", doc=InputDocumentation(doc="An optional factor specifying which cells belong to which cluster, for deconvolution within clusters. For large data sets, clustering should be performed with the quickCluster function before normalization.")), ToolInput(tag="in_subset_row", input_type=Int(optional=True), prefix="--subset-row", doc=InputDocumentation(doc="Logical, integer or character vector indicating the rows of SCE to use. If a character vector, it must contain the names of the rows in SCE.")), ToolInput(tag="in_get_spikes", input_type=String(optional=True), prefix="--get-spikes", doc=InputDocumentation(doc="If get-spikes = FALSE, spike-in transcripts are automatically removed. If get.spikes=TRUE, no filtering on the spike-in transcripts will be performed.")), ToolInput(tag="in_scaling", input_type=Int(optional=True), prefix="--scaling", doc=InputDocumentation(doc="A numeric scalar containing scaling factors to adjust the counts prior to computing size factors.")), ToolInput(tag="in_min_mean", input_type=Int(optional=True), prefix="--min_mean", doc=InputDocumentation(doc="A numeric scalar specifying the minimum (library size-adjusted) average count of genes to be used for normalization.")), ToolInput(tag="in_output_sce_object", input_type=Int(optional=True), prefix="--output-sce-object", doc=InputDocumentation(doc="Path to the output SCE object containing the vector of size factors in sizeFactors(x)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scran_Compute_Sum_Factors_R_V0_1_0().translate("wdl", allow_empty_container=True)

