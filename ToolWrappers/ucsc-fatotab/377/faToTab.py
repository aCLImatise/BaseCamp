from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Fatotab_V0_1_0 = CommandToolBuilder(tool="faToTab", base_command=["faToTab"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="-type", doc=InputDocumentation(doc="sequence type, dna or protein, default is dna")), ToolInput(tag="in_keep_acc_suffix", input_type=Boolean(optional=True), prefix="-keepAccSuffix", doc=InputDocumentation(doc="- don't strip dot version off of sequence id, keep as is")), ToolInput(tag="in_in_filename", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fatotab_V0_1_0().translate("wdl", allow_empty_container=True)

