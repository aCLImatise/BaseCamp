from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Decide_Bak_V0_1_0 = CommandToolBuilder(tool="decide.bak", base_command=["decide.bak"], inputs=[ToolInput(tag="in_diploid", input_type=Boolean(optional=True), prefix="--diploid", doc=InputDocumentation(doc="use the diploid model")), ToolInput(tag="in_first_pass", input_type=Boolean(optional=True), prefix="--first_pass", doc=InputDocumentation(doc="do not display 'best k' at the end, inform user of rough estimation")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads (default: 1)"))], outputs=[], container="quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Decide_Bak_V0_1_0().translate("wdl")

