from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Create_Metaplots_Bash_V0_1_0 = CommandToolBuilder(tool="create_metaplots.bash", base_command=["create_metaplots.bash"], inputs=[ToolInput(tag="in_ribo_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Metaplots_Bash_V0_1_0().translate("wdl", allow_empty_container=True)

