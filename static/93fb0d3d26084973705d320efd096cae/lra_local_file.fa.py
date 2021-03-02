from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Lra_Local_File_Fa_V0_1_0 = CommandToolBuilder(tool="lra_local_file.fa", base_command=["lra", "local", "file.fa"], inputs=[ToolInput(tag="in_int_local_minimizer", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="(int) Local minimizer window size (10).")), ToolInput(tag="in_int_local_maximum", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="(int) Local maximum minimizer frequency (5).")), ToolInput(tag="in_int_local_word", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="(int) Local word size (10)")), ToolInput(tag="in_help", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="help."))], outputs=[], container="quay.io/biocontainers/lra:1.1.2--h5ef6573_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lra_Local_File_Fa_V0_1_0().translate("wdl")

