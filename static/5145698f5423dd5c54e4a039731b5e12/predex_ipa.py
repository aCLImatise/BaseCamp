from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Predex_Ipa_V0_1_0 = CommandToolBuilder(tool="predex_ipa", base_command=["predex", "ipa"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dir with IPA downloaded table")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output dir to write processed data to\n(default = current)")), ToolInput(tag="in_extension", input_type=String(optional=True), prefix="--extension", doc=InputDocumentation(doc="Extension of IPA files (default = .txt)"))], outputs=[], container="quay.io/biocontainers/predex:0.9.3--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Predex_Ipa_V0_1_0().translate("wdl")

