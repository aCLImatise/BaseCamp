from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Lorikeet_Evolve_V0_1_0 = CommandToolBuilder(tool="lorikeet_evolve", base_command=["lorikeet", "evolve"], inputs=[ToolInput(tag="in_bam_files", input_type=String(optional=True), prefix="--bam-files", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_file_cache_directory", input_type=File(optional=True), prefix="--bam-file-cache-directory", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lorikeet_Evolve_V0_1_0().translate("wdl", allow_empty_container=True)

