from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Mmseqs_Gff2Db_V0_1_0 = CommandToolBuilder(tool="mmseqs_gff2db", base_command=["mmseqs", "gff2db"], inputs=[ToolInput(tag="in_gff_type", input_type=File(optional=True), prefix="--gff-type", doc=InputDocumentation(doc="Type in the GFF file to filter by []")), ToolInput(tag="in_id_offset", input_type=Int(optional=True), prefix="--id-offset", doc=InputDocumentation(doc="Numeric ids in index file are offset by this value [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Gff2Db_V0_1_0().translate("wdl")

