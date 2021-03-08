from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Mmseqs_Createdb_V0_1_0 = CommandToolBuilder(tool="mmseqs_createdb", base_command=["mmseqs", "createdb"], inputs=[ToolInput(tag="in_dbtype", input_type=Int(optional=True), prefix="--dbtype", doc=InputDocumentation(doc="Database type 0: auto, 1: amino acid 2: nucleotides [0]")), ToolInput(tag="in_shuffle", input_type=Boolean(optional=True), prefix="--shuffle", doc=InputDocumentation(doc="Shuffle input database [1]")), ToolInput(tag="in_created_b_mode", input_type=Int(optional=True), prefix="--createdb-mode", doc=InputDocumentation(doc="Createdb mode 0: copy data, 1: soft link data and write new index (works only with single line fasta/q) [0]")), ToolInput(tag="in_id_offset", input_type=Int(optional=True), prefix="--id-offset", doc=InputDocumentation(doc="Numeric ids in index file are offset by this value [0]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]")), ToolInput(tag="in_write_lookup", input_type=Int(optional=True), prefix="--write-lookup", doc=InputDocumentation(doc="write .lookup file containing mapping from internal id, fasta id and file number [1]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Createdb_V0_1_0().translate("wdl")

