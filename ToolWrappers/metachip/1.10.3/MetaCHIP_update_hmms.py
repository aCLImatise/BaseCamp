from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Metachip_Update_Hmms_V0_1_0 = CommandToolBuilder(tool="MetaCHIP_update_hmms", base_command=["MetaCHIP", "update_hmms"], inputs=[ToolInput(tag="in_hmm", input_type=File(optional=True), prefix="-hmm", doc=InputDocumentation(doc="MetaCHIP_phylo.hmm file")), ToolInput(tag="in_p_db", input_type=File(optional=True), prefix="-p_db", doc=InputDocumentation(doc="Pfam db file, e.g. Pfam-A.hmm")), ToolInput(tag="in_t_db", input_type=Directory(optional=True), prefix="-t_db", doc=InputDocumentation(doc="TIGRFAMs db folder, e.g. TIGRFAMs_14.0_HMM"))], outputs=[], container="quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metachip_Update_Hmms_V0_1_0().translate("wdl")

