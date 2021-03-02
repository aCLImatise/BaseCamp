from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rnasoup_Consmfe_Pl_V0_1_0 = CommandToolBuilder(tool="rnasoup_consMFE.pl", base_command=["rnasoup_consMFE.pl"], inputs=[ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Original FASTA file with sequences which have been clustered.")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="Directory containing intermediate*.aln files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnasoup_Consmfe_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

