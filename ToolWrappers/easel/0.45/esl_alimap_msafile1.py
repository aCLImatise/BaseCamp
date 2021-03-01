from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Esl_Alimap_Msafile1_V0_1_0 = CommandToolBuilder(tool="esl_alimap_msafile1", base_command=["esl-alimap", "msafile1"], inputs=[ToolInput(tag="in_msa_file_two", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Alimap_Msafile1_V0_1_0().translate("wdl", allow_empty_container=True)

