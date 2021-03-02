from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Water_V0_1_0 = CommandToolBuilder(tool="water", base_command=["water"], inputs=[ToolInput(tag="in_gap_open", input_type=Boolean(optional=True), prefix="-gapopen", doc=InputDocumentation(doc="float      [10.0 for any sequence] The gap open penalty\nis the score taken away when a gap is\ncreated. The best value depends on the\nchoice of comparison matrix. The default\nvalue assumes you are using the EBLOSUM62\nmatrix for protein sequences, and the\nEDNAFULL matrix for nucleotide sequences.\n(Number from 0.000 to 100.000)")), ToolInput(tag="in_gap_extend", input_type=Boolean(optional=True), prefix="-gapextend", doc=InputDocumentation(doc="float      [0.5 for any sequence] The gap extension\npenalty is added to the standard gap penalty\nfor each base or residue in the gap. This\nis how long gaps are penalized. Usually you\nwill expect a few long gaps rather than many\nshort gaps, so the gap extension penalty\nshould be lower than the gap penalty. An\nexception is where one or both sequences are\nsingle reads with possible sequencing\nerrors in which case you would expect many\nsingle base gaps. You can get this result by\nsetting the gap open penalty to zero (or\nvery low) and using the gap extension\npenalty to control gap scoring. (Number from\n0.000 to 10.000)")), ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="matrixf    [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62' (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles are found in the 'data' directory of\nthe EMBOSS installation."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Water_V0_1_0().translate("wdl", allow_empty_container=True)

