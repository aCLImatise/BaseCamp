from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Baralign_Sh_V0_1_0 = CommandToolBuilder(tool="baralign.sh", base_command=["baralign.sh"], inputs=[ToolInput(tag="in_include_reversed_barcodes", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc=": Don't include reversed barcodes (alpha+beta -> beta+alpha) in the alignment target.")), ToolInput(tag="in_number_threads_bowtiebuild", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": Number of threads for bowtie and bowtie-build to use (default: 1).")), ToolInput(tag="in_number_pass_default", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": Number to pass to bowtie's --chunkmbs option (default: 512)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Baralign_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

