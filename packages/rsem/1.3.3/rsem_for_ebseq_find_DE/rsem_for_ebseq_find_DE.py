from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Rsem_For_Ebseq_Find_De_V0_1_0 = CommandToolBuilder(tool="rsem_for_ebseq_find_DE", base_command=["rsem-for-ebseq-find-DE"], inputs=[ToolInput(tag="in_number_of_replicate_for_condition_two", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_For_Ebseq_Find_De_V0_1_0().translate("wdl", allow_empty_container=True)

