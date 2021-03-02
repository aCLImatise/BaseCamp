from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Seq2Science_Init_V0_1_0 = CommandToolBuilder(tool="seq2science_init", base_command=["seq2science", "init"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="The path to the directory where to initialise the\nconfig and samples files.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seq2Science_Init_V0_1_0().translate("wdl", allow_empty_container=True)

