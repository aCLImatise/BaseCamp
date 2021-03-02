from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Trimseq_V0_1_0 = CommandToolBuilder(tool="_trimseq", base_command=["_trimseq"], inputs=[ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="-window", doc=InputDocumentation(doc="integer    [1] This determines the size of the region\nthat is considered when deciding whether the\npercentage of ambiguity is greater than the\nthreshold. A value of 5 means that a region\nof 5 letters in the sequence is shifted\nalong the sequence from the ends and\ntrimming is done only if there is a greater\nor equal percentage of ambiguity than the\nthreshold percentage. (Integer 1 or more)")), ToolInput(tag="in_percent", input_type=Boolean(optional=True), prefix="-percent", doc=InputDocumentation(doc="float      [100.0] This is the threshold of the\npercentage ambiguity in the window required\nin order to trim a sequence. (Any numeric\nvalue)")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="-strict", doc=InputDocumentation(doc="boolean    [N] In nucleic sequences, trim off not only\nN's and X's, but also the nucleotide IUPAC\nambiguity codes M, R, W, S, Y, K, V, H, D\nand B. In protein sequences, trim off not\nonly X's but also B and Z.")), ToolInput(tag="in_star", input_type=Boolean(optional=True), prefix="-star", doc=InputDocumentation(doc="boolean    [N] In protein sequences, trim off not only\nX's, but also the *'s"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Trimseq_V0_1_0().translate("wdl", allow_empty_container=True)

