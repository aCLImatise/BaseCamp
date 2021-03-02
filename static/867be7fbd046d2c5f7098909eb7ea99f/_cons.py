from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Cons_V0_1_0 = CommandToolBuilder(tool="_cons", base_command=["_cons"], inputs=[ToolInput(tag="in_data_file", input_type=Boolean(optional=True), prefix="-datafile", doc=InputDocumentation(doc="matrix     [EBLOSUM62 for protein, EDNAFULL for DNA]\nThis is the scoring matrix file used when\ncomparing sequences. By default it is the\nfile 'EBLOSUM62' (for proteins) or the file\n'EDNAFULL' (for nucleic sequences). These\nfiles are found in the 'data' directory of\nthe EMBOSS installation.")), ToolInput(tag="in_plurality", input_type=Boolean(optional=True), prefix="-plurality", doc=InputDocumentation(doc="float      [Half the total sequence weighting] Set a\ncut-off for the number of positive matches\nbelow which there is no consensus. The\ndefault plurality is taken as half the total\nweight of all the sequences in the\nalignment. (Any numeric value)")), ToolInput(tag="in_identity", input_type=Boolean(optional=True), prefix="-identity", doc=InputDocumentation(doc="integer    [0] Provides the facility of setting the\nrequired number of identities at a site for\nit to give a consensus at that position.\nTherefore, if this is set to the number of\nsequences in the alignment only columns of\nidentities contribute to the consensus.\n(Integer 0 or more)")), ToolInput(tag="in_set_case", input_type=Boolean(optional=True), prefix="-setcase", doc=InputDocumentation(doc="float      [@( $(sequence.totweight) / 2)] Sets the\nthreshold for the positive matches above\nwhich the consensus is is upper-case and\nbelow which the consensus is in lower-case.\n(Any numeric value)")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="-name", doc=InputDocumentation(doc="string     Name of the consensus sequence (Any string)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Cons_V0_1_0().translate("wdl", allow_empty_container=True)

