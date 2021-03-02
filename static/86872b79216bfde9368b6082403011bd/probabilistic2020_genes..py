from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Probabilistic2020_Genes__V0_1_0 = CommandToolBuilder(tool="probabilistic2020_genes.", base_command=["probabilistic2020", "genes."], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_ll", input_type=String(optional=True), prefix="-ll", doc=InputDocumentation(doc="")), ToolInput(tag="in_probabilistic_two_zero_two_zero", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probabilistic2020_Genes__V0_1_0().translate("wdl", allow_empty_container=True)

