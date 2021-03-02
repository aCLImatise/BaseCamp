from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Square_Mash_V0_1_0 = CommandToolBuilder(tool="square_mash", base_command=["square_mash"], inputs=[ToolInput(tag="in_classic", input_type=Boolean(optional=True), prefix="--classic", doc=InputDocumentation(doc="Output table in a format suitable for R_mds.pl"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Square_Mash_V0_1_0().translate("wdl", allow_empty_container=True)

