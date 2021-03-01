from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Smafa_Makedb_V0_1_0 = CommandToolBuilder(tool="smafa_makedb", base_command=["smafa", "makedb"], inputs=[ToolInput(tag="in_amino_acid", input_type=Boolean(optional=True), prefix="--amino-acid", doc=InputDocumentation(doc="Sequences are amino acid [default: nucleotide]")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Unless there is an error, do not print logging information")), ToolInput(tag="in_translate", input_type=Boolean(optional=True), prefix="--translate", doc=InputDocumentation(doc="Translate input before generating DB")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print extra debug logging information")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_db_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smafa_Makedb_V0_1_0().translate("wdl", allow_empty_container=True)

