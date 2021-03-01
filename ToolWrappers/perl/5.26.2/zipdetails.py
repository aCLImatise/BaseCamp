from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Zipdetails_V0_1_0 = CommandToolBuilder(tool="zipdetails", base_command=["zipdetails"], inputs=[ToolInput(tag="in_verbose_output_stuff", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose - output more stuff"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zipdetails_V0_1_0().translate("wdl", allow_empty_container=True)

