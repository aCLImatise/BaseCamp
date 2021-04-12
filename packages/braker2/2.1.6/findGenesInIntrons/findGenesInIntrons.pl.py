from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Findgenesinintrons_Pl_V0_1_0 = CommandToolBuilder(tool="findGenesInIntrons.pl", base_command=["findGenesInIntrons.pl"], inputs=[ToolInput(tag="in_in_gff", input_type=Boolean(optional=True), prefix="--in_gff", doc=InputDocumentation(doc="[name] name of file with gtf format gene predictions")), ToolInput(tag="in_jg_gff", input_type=Boolean(optional=True), prefix="--jg_gff", doc=InputDocumentation(doc="[name] name of file with corresponding joingenes predictions")), ToolInput(tag="in_out_gff", input_type=Boolean(optional=True), prefix="--out_gff", doc=InputDocumentation(doc="[name] output (gtf format)"))], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findgenesinintrons_Pl_V0_1_0().translate("wdl")

