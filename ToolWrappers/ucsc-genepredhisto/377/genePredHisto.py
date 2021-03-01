from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Genepredhisto_V0_1_0 = CommandToolBuilder(tool="genePredHisto", base_command=["genePredHisto"], inputs=[ToolInput(tag="in_ids", input_type=Boolean(optional=True), prefix="-ids", doc=InputDocumentation(doc="- a second column with the gene name, useful for finding outliers.")), ToolInput(tag="in_what", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_pred_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genepredhisto_V0_1_0().translate("wdl", allow_empty_container=True)

