from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Prefixid_V0_1_0 = CommandToolBuilder(tool="mmseqs_prefixid", base_command=["mmseqs", "prefixid"], inputs=[ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Use this prefix for all entries")), ToolInput(tag="in_mapping_file", input_type=Boolean(optional=True), prefix="--mapping-file", doc=InputDocumentation(doc="specify a file that translates the keys of a DB to new keys, TSV format")), ToolInput(tag="in_tsv", input_type=Boolean(optional=True), prefix="--tsv", doc=InputDocumentation(doc="false           should output be in TSV format")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="8               number of cores used for the computation (uses all cores by default)")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Prefixid_V0_1_0().translate("wdl", allow_empty_container=True)

