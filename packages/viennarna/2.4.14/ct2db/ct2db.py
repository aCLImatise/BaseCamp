from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ct2Db_V0_1_0 = CommandToolBuilder(tool="ct2db", base_command=["ct2db"], inputs=[ToolInput(tag="in_remove_pk", input_type=Boolean(optional=True), prefix="--removePK", doc=InputDocumentation(doc="Remove pseudoknots from structure\n(default=off)")), ToolInput(tag="in_convert_to_rna", input_type=Boolean(optional=True), prefix="--convertToRNA", doc=InputDocumentation(doc="Substitute all nucleotides with their RNA alphabet\ncounter parts, i.e. convert to characters A, C, G, U or\nN for unknown bases.\n(default=off)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose\n(default=off)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ct2Db_V0_1_0().translate("wdl", allow_empty_container=True)

