from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Anvi_Script_Gen_Help_Pages_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_help_pages", base_command=["anvi-script-gen-help-pages"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Help_Pages_V0_1_0().translate("wdl")

