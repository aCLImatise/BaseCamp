from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Matcher_V0_1_0 = CommandToolBuilder(tool="_matcher", base_command=["_matcher"], inputs=[ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62' (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles are found in the 'data' directory of\nthe EMBOSS installation.")), ToolInput(tag="in_alternatives", input_type=Boolean(optional=True), prefix="-alternatives", doc=InputDocumentation(doc="integer    [1] This sets the number of alternative\nmatches output. By default only the highest\nscoring alignment is shown. A value of 2\ngives you other reasonable alignments. In\nsome cases, for example multidomain proteins\nof cDNA and genomic DNA comparisons, there\nmay be other interesting and significant\nalignments. (Integer 1 or more)")), ToolInput(tag="in_gap_open", input_type=Boolean(optional=True), prefix="-gapopen", doc=InputDocumentation(doc="integer    [14 for protein, 16 for nucleic] The gap\npenalty is the score taken away when a gap\nis created. The best value depends on the\nchoice of comparison matrix. The default\nvalue of 14 assumes you are using the\nEBLOSUM62 matrix for protein sequences, or a\nvalue of 16 and the EDNAFULL matrix for\nnucleotide sequences. (Positive integer)")), ToolInput(tag="in_gap_extend", input_type=Boolean(optional=True), prefix="-gapextend", doc=InputDocumentation(doc="integer    [4 for any sequence] The gap length, or gap\nextension, penalty is added to the standard\ngap penalty for each base or residue in the\ngap. This is how long gaps are penalized.\nUsually you will expect a few long gaps\nrather than many short gaps, so the gap\nextension penalty should be lower than the\ngap penalty. An exception is where one or\nboth sequences are single reads with\npossible sequencing errors in which case you\nwould expect many single base gaps. You can\nget this result by setting the gap penalty\nto zero (or very low) and using the gap\nextension penalty to control gap scoring.\n(Positive integer)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Matcher_V0_1_0().translate("wdl", allow_empty_container=True)

