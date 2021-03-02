from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Metapi_Gene_Wf_Task_V0_1_0 = CommandToolBuilder(tool="metapi_gene_wf_TASK", base_command=["metapi", "gene_wf", "TASK"], inputs=[ToolInput(tag="in_cluster", input_type=String(optional=True), prefix="--cluster", doc=InputDocumentation(doc="")), ToolInput(tag="in_config", input_type=String(optional=True), prefix="--config", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_met_api", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_wf", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metapi:1.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metapi_Gene_Wf_Task_V0_1_0().translate("wdl")

