from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Scran_Find_Markers_R_V0_1_0 = CommandToolBuilder(tool="scran_find_markers.R", base_command=["scran-find-markers.R"], inputs=[ToolInput(tag="in_input_sce_object", input_type=File(optional=True), prefix="--input-sce-object", doc=InputDocumentation(doc="Path to the input SCE object in rds format.")), ToolInput(tag="in_clusters", input_type=String(optional=True), prefix="--clusters", doc=InputDocumentation(doc="A vector of group assignments for all cells.")), ToolInput(tag="in_p_value_type", input_type=String(optional=True), prefix="--pvalue-type", doc=InputDocumentation(doc="A character specifying how p-values are to be combined across pairwise comparisons for a given group/cluster. Setting pval.type='all' requires a gene to be DE between each cluster and every other cluster (rather than any other cluster, as is the default with pval.type='any').")), ToolInput(tag="in_subset_row", input_type=Int(optional=True), prefix="--subset_row", doc=InputDocumentation(doc="Logical, integer or character vector specifying the rows for which to model the variance. Defaults to all genes in x.")), ToolInput(tag="in_assay_type", input_type=String(optional=True), prefix="--assay-type", doc=InputDocumentation(doc="A character specifying which assay values to use.")), ToolInput(tag="in_get_spikes", input_type=String(optional=True), prefix="--get-spikes", doc=InputDocumentation(doc="Logical specifying wether to perform spike-ins filtering(FALSE) or not (TRUE).")), ToolInput(tag="in_output_markers", input_type=File(optional=True), prefix="--output-markers", doc=InputDocumentation(doc="Path to the rds list of DataFrames with a sorted marker gene list per cluster/group."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scran_Find_Markers_R_V0_1_0().translate("wdl", allow_empty_container=True)

