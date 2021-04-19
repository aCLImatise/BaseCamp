from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Forms_Show_Form_V0_1_0 = CommandToolBuilder(tool="parsec_forms_show_form", base_command=["parsec", "forms", "show_form"], inputs=[ToolInput(tag="in_form_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Forms_Show_Form_V0_1_0().translate("wdl")

