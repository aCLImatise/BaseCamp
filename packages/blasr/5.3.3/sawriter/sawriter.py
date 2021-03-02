from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Sawriter_V0_1_0 = CommandToolBuilder(tool="sawriter", base_command=["sawriter"], inputs=[ToolInput(tag="in_blt", input_type=Int(optional=True), prefix="-blt", doc=InputDocumentation(doc="Build a lookup table on prefixes of length 'p'. This speeds\nup lookups considerably (more than the LCP table), but misses matches\nless than p when searching.")), ToolInput(tag="in_four_bit", input_type=Boolean(optional=True), prefix="-4bit", doc=InputDocumentation(doc="Read in (one) fasta file as a compressed sequence file.")), ToolInput(tag="in_larsson", input_type=Boolean(optional=True), prefix="-larsson", doc=InputDocumentation(doc="(default)  Uses the method of Larsson and Sadakane to build the array.")), ToolInput(tag="in_ma_my", input_type=Boolean(optional=True), prefix="-mamy", doc=InputDocumentation(doc="Uses the method of MAnber and MYers to build the array (slower than larsson,\nand produces the same result. This is mainly for double checking\nthe correctness of larsson).")), ToolInput(tag="in_kark", input_type=Boolean(optional=True), prefix="-kark", doc=InputDocumentation(doc="Use Karkkainen DS3 method for building the suffix array.  This will probably be more\nslow than larsson, but takes only an extra N/(sqrt 3) extra space.")), ToolInput(tag="in_ma_fe", input_type=Boolean(optional=True), prefix="-mafe", doc=InputDocumentation(doc="(disabled for now!) Use the lightweight construction algorithm from Manzini and Ferragina")), ToolInput(tag="in_welter", input_type=Boolean(optional=True), prefix="-welter", doc=InputDocumentation(doc="Use lightweight (sort of light) suffix array construction.  This is a bit more slow than\nnormal larsson.")), ToolInput(tag="in_welterweight", input_type=Int(optional=True), prefix="-welterweight", doc=InputDocumentation(doc="use a difference cover of size N for building the suffix array.  Valid values are 7,32,64,111, and 2281.")), ToolInput(tag="in_kar", input_type=Boolean(optional=True), prefix="-kar", doc=InputDocumentation(doc="")), ToolInput(tag="in_man_my", input_type=Boolean(optional=True), prefix="-manmy", doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="sawriter fastaIn  (writes to fastIn.sa)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sawriter_V0_1_0().translate("wdl", allow_empty_container=True)

