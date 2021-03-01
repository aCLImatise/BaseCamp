from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Combinekinship_V0_1_0 = CommandToolBuilder(tool="combineKinship", base_command=["combineKinship"], inputs=[ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc=": Output prefix for autosomal kinship calculation")), ToolInput(tag="in_pc_a", input_type=Boolean(optional=True), prefix="--pca", doc=InputDocumentation(doc=": Decomoposite calculated kinship matrix.")), ToolInput(tag="in_thread", input_type=Boolean(optional=True), prefix="--thread", doc=InputDocumentation(doc=": Specify number of parallel threads to speed up"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combinekinship_V0_1_0().translate("wdl", allow_empty_container=True)

