from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float

Stag_Itext2Sxpr_Pl_V0_1_0 = CommandToolBuilder(tool="stag_itext2sxpr.pl", base_command=["stag-itext2sxpr.pl"], inputs=[ToolInput(tag="in_help", input_type=Float(optional=True), prefix="-HELP", doc=InputDocumentation(doc="processed in rearrange(), did you use a\nnon-recognized parameter name ?  at /usr/local/lib/site_perl/5.26.2/Data/Stag/BaseGenerator.pm line 454."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Itext2Sxpr_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

