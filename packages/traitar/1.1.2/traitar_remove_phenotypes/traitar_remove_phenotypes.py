from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Traitar_Remove_Phenotypes_V0_1_0 = CommandToolBuilder(tool="traitar_remove_phenotypes", base_command=["traitar", "remove", "phenotypes"], inputs=[ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="")), ToolInput(tag="in_trait_ar", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_remove", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_archive_f", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_phenotypes", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_f", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Traitar_Remove_Phenotypes_V0_1_0().translate("wdl", allow_empty_container=True)

