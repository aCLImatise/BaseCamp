from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Msbar_V0_1_0 = CommandToolBuilder(tool="msbar", base_command=["msbar"], inputs=[ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="-count", doc=InputDocumentation(doc="integer    [1] Number of times to perform the mutation\noperations (Integer 0 or more)")), ToolInput(tag="in_menu_types_point", input_type=Boolean(optional=True), prefix="-point", doc=InputDocumentation(doc="menu       [0] Types of point mutations to perform\n(Values: 0 (None); 1 (Any of the following);\n2 (Insertions); 3 (Deletions); 4 (Changes);\n5 (Duplications); 6 (Moves))")), ToolInput(tag="in_block", input_type=Boolean(optional=True), prefix="-block", doc=InputDocumentation(doc="menu       [0] Types of block mutations to perform\n(Values: 0 (None); 1 (Any of the following);\n2 (Insertions); 3 (Deletions); 4 (Changes);\n5 (Duplications); 6 (Moves))")), ToolInput(tag="in_other_sequence", input_type=Boolean(optional=True), prefix="-othersequence", doc=InputDocumentation(doc="seqall     [asis:N] If you require that the resulting\nmutated sequence should not match a set of\nother sequences, then you can specify that\nset of sequences here. For example, if you\nrequire that the mutated sequence should not\nbe the same as the input sequence, enter\nthe input sequence here. If you want the\nresult to be different to previous results\nof this program, specify the previous result\nsequences here. The program will check that\nthe result does not match the sequences\nspecified here before writing it out. If a\nmatch is found, then the mutation is started\nagain with a fresh copy of the input\nsequence. If, after 10 such retries, there\nis still a match to the set of sequence\ngiven here, then the matching mutated\nsequence is written with a warning message.")), ToolInput(tag="in_minimum", input_type=Boolean(optional=True), prefix="-minimum", doc=InputDocumentation(doc="integer    [1] Minimum size for a block mutation\n(Integer 0 or more)")), ToolInput(tag="in_maximum", input_type=Boolean(optional=True), prefix="-maximum", doc=InputDocumentation(doc="integer    [10] Maximum size for a block mutation (Any\ninteger value)")), ToolInput(tag="in_frame", input_type=String(), position=0, doc=InputDocumentation(doc="Advanced (Unprompted) qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msbar_V0_1_0().translate("wdl", allow_empty_container=True)

