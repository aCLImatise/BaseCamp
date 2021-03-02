from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hubpubliccheck_V0_1_0 = CommandToolBuilder(tool="hubPublicCheck", base_command=["hubPublicCheck"], inputs=[ToolInput(tag="in_udc_dir", input_type=Boolean(optional=True), prefix="-udcDir", doc=InputDocumentation(doc="=/dir/to/cache - place to put cache for remote bigBed/bigWigs")), ToolInput(tag="in_add_hub", input_type=String(optional=True), prefix="-addHub", doc=InputDocumentation(doc="- output statments to add url to table"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hubpubliccheck_V0_1_0().translate("wdl", allow_empty_container=True)

