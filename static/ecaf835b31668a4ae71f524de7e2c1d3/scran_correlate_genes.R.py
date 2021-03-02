from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Scran_Correlate_Genes_R_V0_1_0 = CommandToolBuilder(tool="scran_correlate_genes.R", base_command=["scran-correlate-genes.R"], inputs=[ToolInput(tag="in_input_corr_pairs", input_type=File(optional=True), prefix="--input-corr-pairs", doc=InputDocumentation(doc="Path to the  DataFrame of pairwise correlation statistics, returned by correlatePairs.")), ToolInput(tag="in_output_corr_genes", input_type=String(optional=True), prefix="--output-corr-genes", doc=InputDocumentation(doc="A DataFrame with one row per unique gene in stats and containing the fields: gene, rho, p.value, FDR, limited."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scran_Correlate_Genes_R_V0_1_0().translate("wdl", allow_empty_container=True)

