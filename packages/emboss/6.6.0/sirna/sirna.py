from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sirna_V0_1_0 = CommandToolBuilder(tool="sirna", base_command=["sirna"], inputs=[ToolInput(tag="in_pol_iii", input_type=Boolean(optional=True), prefix="-poliii", doc=InputDocumentation(doc="boolean    [N] This option allows you to select only\nthe 21 base probes that start with a purine\nand so can be expressed from Pol III\nexpression vectors. This is the NARN(17)YNN\npattern that has been suggested by Tuschl et\nal.")), ToolInput(tag="in_aa", input_type=Boolean(optional=True), prefix="-aa", doc=InputDocumentation(doc="boolean    [N] This option allows you to select only\nthose 23 base regions that start with AA. If\nthis option is not selected then regions\nthat start with AA will be favoured by\ngiving them a higher score, but regions that\ndo not start with AA will also be reported.")), ToolInput(tag="in_tt", input_type=Boolean(optional=True), prefix="-tt", doc=InputDocumentation(doc="boolean    [N] This option allows you to select only\nthose 23 base regions that end with TT. If\nthis option is not selected then regions\nthat end with TT will be favoured by giving\nthem a higher score, but regions that do not\nend with TT will also be reported.")), ToolInput(tag="in_context", input_type=Boolean(optional=True), prefix="-context", doc=InputDocumentation(doc="boolean    [N] The output report file gives the\nsequences of the 21 base siRNA regions ready\nto be ordered. This does not give you an\nindication of the 2 bases before the 21\nbases. It is often interesting to see which\nof the suggested possible probe regions have\nan 'AA' in front of them (i.e. it is useful\nto see which of the 23 base regions start\nwith an 'AA'). This option displays the\nwhole 23 bases of the region with the first\ntwo bases in brackets, e.g. '(AA)' to give\nyou some context for the probe region. YOU\nSHOULD NOT INCLUDE THE TWO BASES IN BRACKETS\nWHEN YOU PLACE AN ORDER FOR THE PROBES."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sirna_V0_1_0().translate("wdl", allow_empty_container=True)

