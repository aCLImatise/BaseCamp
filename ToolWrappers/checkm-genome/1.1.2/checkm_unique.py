from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Checkm_Unique_V0_1_0 = CommandToolBuilder(tool="checkm_unique", base_command=["checkm", "unique"], inputs=[ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (all other files in bin directory are ignored) (default: fna)")), ToolInput(tag="in_bin_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory containing bins (fasta format)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Unique_V0_1_0().translate("wdl", allow_empty_container=True)

