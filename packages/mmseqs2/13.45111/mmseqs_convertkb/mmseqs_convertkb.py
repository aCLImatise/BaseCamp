from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Mmseqs_Convertkb_V0_1_0 = CommandToolBuilder(tool="mmseqs_convertkb", base_command=["mmseqs", "convertkb"], inputs=[ToolInput(tag="in_mapping_file", input_type=File(optional=True), prefix="--mapping-file", doc=InputDocumentation(doc="Specify a file that translates the keys of a DB to new keys, TSV format []")), ToolInput(tag="in_kb_columns", input_type=Int(optional=True), prefix="--kb-columns", doc=InputDocumentation(doc="list of indices of UniprotKB columns to be extracted [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Convertkb_V0_1_0().translate("wdl")

