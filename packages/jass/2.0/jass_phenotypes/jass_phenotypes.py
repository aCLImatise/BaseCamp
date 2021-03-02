from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jass_Phenotypes_V0_1_0 = CommandToolBuilder(tool="jass_phenotypes", base_command=["jass", "phenotypes"], inputs=[ToolInput(tag="in_jass", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jass_Phenotypes_V0_1_0().translate("wdl", allow_empty_container=True)

