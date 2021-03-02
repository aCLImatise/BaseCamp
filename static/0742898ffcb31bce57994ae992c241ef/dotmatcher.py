from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dotmatcher_V0_1_0 = CommandToolBuilder(tool="dotmatcher", base_command=["dotmatcher"], inputs=[ToolInput(tag="in_matrix_file", input_type=Boolean(optional=True), prefix="-matrixfile", doc=InputDocumentation(doc="matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62' (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles are found in the 'data' directory of\nthe EMBOSS installation.")), ToolInput(tag="in_window_size", input_type=Boolean(optional=True), prefix="-windowsize", doc=InputDocumentation(doc="integer    [10] Window size over which to test\nthreshold (Integer 3 or more)")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="-threshold", doc=InputDocumentation(doc="integer    [23] Threshold (Integer 0 or more)")), ToolInput(tag="in_stretch", input_type=Boolean(optional=True), prefix="-stretch", doc=InputDocumentation(doc="toggle     [N] Display a non-proportional graph"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dotmatcher_V0_1_0().translate("wdl", allow_empty_container=True)

