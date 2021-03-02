from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deblur_Remove_Chimeras_Denovo_5_Critical_V0_1_0 = CommandToolBuilder(tool="deblur_remove_chimeras_denovo_5_critical", base_command=["deblur", "remove-chimeras-denovo", "5-critical"], inputs=[ToolInput(tag="in_de_blur", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_remove_chimeras_de_novo", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seqs_fp", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_fp", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deblur_Remove_Chimeras_Denovo_5_Critical_V0_1_0().translate("wdl", allow_empty_container=True)

