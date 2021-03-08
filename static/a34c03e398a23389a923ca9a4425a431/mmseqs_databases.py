from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Mmseqs_Databases_V0_1_0 = CommandToolBuilder(tool="mmseqs_databases", base_command=["mmseqs", "databases"], inputs=[ToolInput(tag="in_force_reuse", input_type=Boolean(optional=True), prefix="--force-reuse", doc=InputDocumentation(doc="Reuse tmp filse in tmp/latest folder ignoring parameters and version changes [0]")), ToolInput(tag="in_remove_tmp_files", input_type=Boolean(optional=True), prefix="--remove-tmp-files", doc=InputDocumentation(doc="Delete temporary files [0]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="Type            Taxonomy        Url                                                           "))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Databases_V0_1_0().translate("wdl")

