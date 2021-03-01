from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Pybel_Post_Commons_Scai_Fraunhofer_De_V0_1_0 = CommandToolBuilder(tool="pybel_post_commons.scai.fraunhofer.de", base_command=["pybel", "post", "commons.scai.fraunhofer.de"], inputs=[ToolInput(tag="in_py_bel", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_post", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybel_Post_Commons_Scai_Fraunhofer_De_V0_1_0().translate("wdl", allow_empty_container=True)

