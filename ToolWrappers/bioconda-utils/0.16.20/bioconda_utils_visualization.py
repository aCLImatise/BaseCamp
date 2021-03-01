from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bioconda_Utils_Visualization_V0_1_0 = CommandToolBuilder(tool="bioconda_utils_visualization", base_command=["bioconda-utils", "visualization"], inputs=[ToolInput(tag="in_biocon_da_utils", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioconda_Utils_Visualization_V0_1_0().translate("wdl", allow_empty_container=True)

