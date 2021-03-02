from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Supermatcher_V0_1_0 = CommandToolBuilder(tool="_supermatcher", base_command=["_supermatcher"], inputs=[ToolInput(tag="in_gap_open", input_type=Boolean(optional=True), prefix="-gapopen", doc=InputDocumentation(doc="float      [10.0 for any sequence type] Gap opening\npenalty (Number from 0.000 to 100.000)")), ToolInput(tag="in_gap_extend", input_type=Boolean(optional=True), prefix="-gapextend", doc=InputDocumentation(doc="float      [0.5 for any sequence type] Gap extension\npenalty (Number from 0.000 to 10.000)")), ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62' (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles are found in the 'data' directory of\nthe EMBOSS installation.")), ToolInput(tag="in_min_score", input_type=Boolean(optional=True), prefix="-minscore", doc=InputDocumentation(doc="float      [0] Minimum alignment score to report an\nalignment. (Number 0.000 or more)")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="-width", doc=InputDocumentation(doc="integer    [16] Alignment width (Integer 1 or more)")), ToolInput(tag="in_word_len", input_type=Boolean(optional=True), prefix="-wordlen", doc=InputDocumentation(doc="integer    [6] Word length for initial matching\n(Integer 3 or more)")), ToolInput(tag="in_errfile", input_type=Boolean(optional=True), prefix="-errfile", doc=InputDocumentation(doc="outfile    [supermatcher.error] Error file to be\nwritten to for failed alignments"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Supermatcher_V0_1_0().translate("wdl", allow_empty_container=True)

