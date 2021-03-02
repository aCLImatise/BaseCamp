from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Corset_Fasta_Id_Changer_V0_1_0 = CommandToolBuilder(tool="corset_fasta_ID_changer", base_command=["corset_fasta_ID_changer"], inputs=[ToolInput(tag="in_cluster_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Corset_Fasta_Id_Changer_V0_1_0().translate("wdl", allow_empty_container=True)

