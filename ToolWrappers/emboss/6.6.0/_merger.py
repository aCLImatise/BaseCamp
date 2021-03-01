from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Merger_V0_1_0 = CommandToolBuilder(tool="_merger", base_command=["_merger"], inputs=[ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62' (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles are found in the 'data' directory of\nthe EMBOSS installation.")), ToolInput(tag="in_gap_open", input_type=Boolean(optional=True), prefix="-gapopen", doc=InputDocumentation(doc="float      [@($(acdprotein)? 50.0 : 50.0 )] Gap opening\npenalty (Number from 0.000 to 100.000)")), ToolInput(tag="in_gap_extend", input_type=Boolean(optional=True), prefix="-gapextend", doc=InputDocumentation(doc="float      [@($(acdprotein)? 5.0 : 5.0)] Gap extension\npenalty (Number from 0.000 to 10.000)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Merger_V0_1_0().translate("wdl", allow_empty_container=True)

