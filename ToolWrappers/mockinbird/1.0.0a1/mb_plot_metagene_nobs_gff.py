from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Plot_Metagene_Nobs_Gff_V0_1_0 = CommandToolBuilder(tool="mb_plot_metagene_nobs_gff", base_command=["mb-plot-metagene-nobs", "gff"], inputs=[ToolInput(tag="in_downstream", input_type=String(optional=True), prefix="--downstream", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_plot_meta_gene_nobs", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Plot_Metagene_Nobs_Gff_V0_1_0().translate("wdl", allow_empty_container=True)

