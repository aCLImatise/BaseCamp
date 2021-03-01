from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Makefastafilefromscaffolds_Pl_V0_1_0 = CommandToolBuilder(tool="makeFastaFileFromScaffolds.pl", base_command=["makeFastaFileFromScaffolds.pl"], inputs=[ToolInput(tag="in_t_exists_", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="'t exists -- fatal."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makefastafilefromscaffolds_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

