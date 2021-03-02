from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mmseqs_Convertkb_V0_1_0 = CommandToolBuilder(tool="mmseqs_convertkb", base_command=["mmseqs", "convertkb"], inputs=[ToolInput(tag="in_mapping_file", input_type=Boolean(optional=True), prefix="--mapping-file", doc=InputDocumentation(doc="specify a file that translates the keys of a DB to new keys, TSV format")), ToolInput(tag="in_kb_columns", input_type=Boolean(optional=True), prefix="--kb-columns", doc=InputDocumentation(doc="0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16        list of indices of UniprotKB columns to be extracted")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info")), ToolInput(tag="in_uniprotkb_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_uniprotkb_db", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Convertkb_V0_1_0().translate("wdl", allow_empty_container=True)

