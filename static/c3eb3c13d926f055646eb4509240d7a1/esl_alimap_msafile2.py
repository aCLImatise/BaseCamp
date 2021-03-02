from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Esl_Alimap_Msafile2_V0_1_0 = CommandToolBuilder(tool="esl_alimap_msafile2", base_command=["esl-alimap", "msafile2"], inputs=[ToolInput(tag="in_esl_ali_map", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_msa_file_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_msa_file_two", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Alimap_Msafile2_V0_1_0().translate("wdl")

