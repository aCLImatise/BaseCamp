from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pslcat_File_V0_1_0 = CommandToolBuilder(tool="pslCat_file", base_command=["pslCat", "file"], inputs=[ToolInput(tag="in_match", input_type=String(), position=0, doc=InputDocumentation(doc="match           count   bases   count   bases           name            size    start   end     name            size    start   end     count"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslcat_File_V0_1_0().translate("wdl", allow_empty_container=True)

