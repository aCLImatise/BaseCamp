from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cva_Show_Cravat_Conf_V0_1_0 = CommandToolBuilder(tool="cva_show_cravat_conf", base_command=["cva", "show-cravat-conf"], inputs=[ToolInput(tag="in_cva", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cva_Show_Cravat_Conf_V0_1_0().translate("wdl")

