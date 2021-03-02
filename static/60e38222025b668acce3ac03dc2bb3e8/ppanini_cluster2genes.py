from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Ppanini_Cluster2Genes_V0_1_0 = CommandToolBuilder(tool="ppanini_cluster2genes", base_command=["ppanini_cluster2genes"], inputs=[ToolInput(tag="in_cd_hit", input_type=String(optional=True), prefix="--cd-hit", doc=InputDocumentation(doc="CD-HIT clusters output")), ToolInput(tag="in_json", input_type=Boolean(optional=True), prefix="--json", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Cluster2Genes_V0_1_0().translate("wdl", allow_empty_container=True)

