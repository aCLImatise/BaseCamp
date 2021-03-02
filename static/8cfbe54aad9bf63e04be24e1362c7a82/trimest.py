from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Trimest_V0_1_0 = CommandToolBuilder(tool="trimest", base_command=["trimest"], inputs=[ToolInput(tag="in_minlength", input_type=Boolean(optional=True), prefix="-minlength", doc=InputDocumentation(doc="integer    [4] This is the minimum length that a poly-A\n(or poly-T) tail must have before it is\nremoved. If there are mismatches in the tail\nthan there must be at least this length of\npoly-A tail before the mismatch for the\nmismatch to be considered part of the tail.\n(Integer 1 or more)")), ToolInput(tag="in_mismatches", input_type=Boolean(optional=True), prefix="-mismatches", doc=InputDocumentation(doc="integer    [1] If there are this number or fewer\ncontiguous non-A bases in a poly-A tail\nthen, if there are '-minlength' 'A' bases\nbefore them, they will be considered part of\nthe tail and removed .\nFor example the terminal 4 A's of GCAGAAAA\nwould be removed with the default values of\n-minlength=4 and -mismatches=1 (There are\nnot at least 4 A's before the last 'G' and\nso only the A's after it are considered to\nbe part of the tail). The terminal 9 bases\nof GCAAAAGAAAA would be removed; There are\nat least -minlength A's preceeding the last\n'G', so it is part of the tail. (Integer 0\nor more)")), ToolInput(tag="in_to_lower", input_type=Boolean(optional=True), prefix="-tolower", doc=InputDocumentation(doc="toggle     [N] The poly-A region can be 'masked' by\nconverting the sequence characters to\nlower-case. Some non-EMBOSS programs e.g.\nfasta can interpret this as a masked region.\nThe sequence is unchanged apart from the\ncase change. You might like to ensure that\nthe whole sequence is in upper-case before\nmasking the specified regions to lower-case\nby using the '-supper' sequence qualifier."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trimest_V0_1_0().translate("wdl", allow_empty_container=True)

