from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Stretcher_V0_1_0 = CommandToolBuilder(tool="_stretcher", base_command=["_stretcher"], inputs=[ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62' (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles are found in the 'data' directory of\nthe EMBOSS installation.")), ToolInput(tag="in_gap_open", input_type=Boolean(optional=True), prefix="-gapopen", doc=InputDocumentation(doc="integer    [12 for protein, 16 for nucleic] Gap penalty\n(Positive integer)")), ToolInput(tag="in_gap_extend", input_type=Boolean(optional=True), prefix="-gapextend", doc=InputDocumentation(doc="integer    [2 for protein, 4 for nucleic] Gap length\npenalty (Positive integer)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Stretcher_V0_1_0().translate("wdl", allow_empty_container=True)

