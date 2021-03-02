from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Loadfeatures_V0_1_0 = CommandToolBuilder(tool="loadFeatures", base_command=["loadFeatures"], inputs=[ToolInput(tag="in_are_ungapped", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="are ungapped")), ToolInput(tag="in_is_the_iid", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="is the IID"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Loadfeatures_V0_1_0().translate("wdl", allow_empty_container=True)

