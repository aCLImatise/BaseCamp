from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arcashla_Partial_File_V0_1_0 = CommandToolBuilder(tool="arcasHLA_partial_file", base_command=["arcasHLA", "partial", "file"], inputs=[ToolInput(tag="in_g", input_type=String(optional=True), prefix="-G", doc=InputDocumentation(doc="")), ToolInput(tag="in_ar_cash_la", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_partial", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arcashla_Partial_File_V0_1_0().translate("wdl")

