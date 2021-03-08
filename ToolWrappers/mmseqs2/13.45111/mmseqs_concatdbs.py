from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Mmseqs_Concatdbs_V0_1_0 = CommandToolBuilder(tool="mmseqs_concatdbs", base_command=["mmseqs", "concatdbs"], inputs=[ToolInput(tag="in_preserve_keys", input_type=Boolean(optional=True), prefix="--preserve-keys", doc=InputDocumentation(doc="The keys of the two DB should be distinct, and they will be preserved in the concatenation [0]")), ToolInput(tag="in_take_larger_entry", input_type=Boolean(optional=True), prefix="--take-larger-entry", doc=InputDocumentation(doc="Only keep the larger entry (dataSize >) in the concatenation, both databases need the same keys in the index [0]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [1]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Concatdbs_V0_1_0().translate("wdl")

