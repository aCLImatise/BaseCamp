from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Textfile_Sh_V0_1_0 = CommandToolBuilder(tool="textfile.sh", base_command=["textfile.sh"], inputs=[ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_start_line", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_stop_line", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Textfile_Sh_V0_1_0().translate("wdl")

