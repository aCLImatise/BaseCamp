from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ipa_Purge_Dups_Split_Fa_V0_1_0 = CommandToolBuilder(tool="ipa_purge_dups_split_fa", base_command=["ipa_purge_dups_split_fa"], inputs=[ToolInput(tag="in_bool_block_split", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="BOOL    block split by N")), ToolInput(tag="in_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_stat", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipa_Purge_Dups_Split_Fa_V0_1_0().translate("wdl")

