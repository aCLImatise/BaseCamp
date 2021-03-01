from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Snippy_Clean_Full_Aln_V0_1_0 = CommandToolBuilder(tool="snippy_clean_full_aln", base_command=["snippy-clean_full_aln"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="!      Output verbose debug info (default '0').")), ToolInput(tag="in_to", input_type=String(optional=True), prefix="--to", doc=InputDocumentation(doc="Replacement char (default 'N')."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snippy_Clean_Full_Aln_V0_1_0().translate("wdl", allow_empty_container=True)

