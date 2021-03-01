from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Glimmhmm_Pl_V0_1_0 = CommandToolBuilder(tool="glimmhmm.pl", base_command=["glimmhmm.pl"], inputs=[ToolInput(tag="in_glimmer_hmm_program", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_train_dir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glimmhmm_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

