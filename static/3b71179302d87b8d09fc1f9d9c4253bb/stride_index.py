from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Stride_Index_V0_1_0 = CommandToolBuilder(tool="stride_index", base_command=["stride", "index"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_algorithm", input_type=String(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="BWT construction algorithm. STR can be:\nsais - induced sort algorithm, slower but works for very long sequences\nropebwt - Li's ropebwt algorithm, suitable for short reads (<200bp)\nropebwt2 - Li's ropebwt2 algorithm, suitable for short and long reads (default)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="use NUM threads to construct the index (default: 1)")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="write index to file using PREFIX instead of prefix of READSFILE")), ToolInput(tag="in_no_reverse", input_type=Boolean(optional=True), prefix="--no-reverse", doc=InputDocumentation(doc="suppress construction of the reverse BWT. Use this option when building the index\nfor reads that will be error corrected using the k-mer corrector, which only needs the forward index")), ToolInput(tag="in_no_forward", input_type=Boolean(optional=True), prefix="--no-forward", doc=InputDocumentation(doc="suppress construction of the forward BWT. Use this option when building the forward and reverse index separately"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stride_Index_V0_1_0().translate("wdl", allow_empty_container=True)

