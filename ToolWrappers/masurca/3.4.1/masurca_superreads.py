from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Masurca_Superreads_V0_1_0 = CommandToolBuilder(tool="masurca_superreads", base_command=["masurca-superreads"], inputs=[ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Create the super reads in the directory given by PATH. Create\nthe directory if it does not exists.\n")), ToolInput(tag="in_fragonedotfqdotgz", input_type=Int(), position=0, doc=InputDocumentation(doc="Unmated library"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Masurca_Superreads_V0_1_0().translate("wdl", allow_empty_container=True)

