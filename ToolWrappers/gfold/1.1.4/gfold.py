from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gfold_V0_1_0 = CommandToolBuilder(tool="gfold", base_command=["gfold"], inputs=[ToolInput(tag="in_g_fold", input_type=String(), position=0, doc=InputDocumentation(doc=":   Generalized fold change for ranking differentially expressed   \ngenes from RNA-seq data.")), ToolInput(tag="in_author", input_type=String(), position=1, doc=InputDocumentation(doc=":   Jianxing Feng (jianxing.tongji@gmail.com)")), ToolInput(tag="in_date", input_type=String(), position=2, doc=InputDocumentation(doc=":   Sun May 24 07:42:36 CST 2015"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfold_V0_1_0().translate("wdl", allow_empty_container=True)

