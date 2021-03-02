from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Expfit_Sh_V0_1_0 = CommandToolBuilder(tool="expfit.sh", base_command=["expfit.sh"], inputs=[ToolInput(tag="in_par_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Expfit_Sh_V0_1_0().translate("wdl")

