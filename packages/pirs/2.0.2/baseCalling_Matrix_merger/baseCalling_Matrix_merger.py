from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Basecalling_Matrix_Merger_V0_1_0 = CommandToolBuilder(tool="baseCalling_Matrix_merger", base_command=["baseCalling_Matrix_merger"], inputs=[ToolInput(tag="in_base_calling_matrix_merger_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basecalling_Matrix_Merger_V0_1_0().translate("wdl", allow_empty_container=True)

