from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Ssu_Esl_Alimap_Msafile2_V0_1_0 = CommandToolBuilder(tool="ssu_esl_alimap_msafile2", base_command=["ssu-esl-alimap", "msafile2"], inputs=[ToolInput(tag="in_ssu_esl_ali_map", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_msa_file_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_msa_file_two", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Alimap_Msafile2_V0_1_0().translate("wdl", allow_empty_container=True)

